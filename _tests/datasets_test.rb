# Run after building: bundle exec ruby _tests/datasets_test.rb
require 'kramdown'
require 'kramdown-parser-gfm'
require 'nokogiri'

root = File.expand_path('..', __dir__)
destination = ENV.fetch('JEKYLL_DESTINATION', File.join(root, '_site'))
markdown = File.read(File.join(root, '_pages/datasets.md')).split(/^---\s*$\n?/, 3).last
source = Nokogiri::HTML.fragment(Kramdown::Document.new(markdown, input: 'GFM').to_html)
page = Nokogiri::HTML(File.read(File.join(destination, 'datasets/index.html')))
tables = source.css('table')
regions = page.css('.dataset-table')
normalize = ->(text) { text.gsub(/\s+/, ' ').strip }

raise 'Dataset tables missing' unless regions.size == tables.size && tables.size == 4
tables.zip(regions).each do |expected, region|
  raise 'Table cannot receive keyboard focus' unless region['tabindex'] == '0' && region['role'] == 'region'
  rows = ->(table) { table.css('tr').map { |row| row.css('th, td').map { |cell| normalize.call(cell.text) } } }
  raise 'Dataset values or row order changed' unless rows.call(region) == rows.call(expected)
  links = ->(table) { table.css('a').map { |link| [link['href'], normalize.call(link.text)] } }
  raise 'Dataset download links changed' unless links.call(region) == links.call(expected)
end

fenced_blocks = markdown.scan(/^```(?:bib|python)\s*$/).size
code = ->(doc) { doc.css('pre code').map { |node| node.text.strip } }
raise 'Citation or example code missing' unless code.call(page).size == fenced_blocks && code.call(page) == code.call(source)
raise 'Citation disclosures missing' unless page.css('.dataset-citation > summary').size == 3
raise 'Unavailable links are not identified' unless page.css('.dataset-unavailable[aria-disabled="true"]').size == source.css('.dataset-unavailable').size
page.css('.dataset-jump a').each do |link|
  raise 'Category jump target missing' unless page.at_css(link['href'])
end

puts "PASS: #{page.css('.dataset-table tbody tr').size} dataset rows, #{page.css('.dataset-table a').size} links, citations and code examples match the source."
