# Run after building: bundle exec ruby _tests/publications_test.rb
require 'yaml'
require 'date'
require 'nokogiri'

root = File.expand_path('..', __dir__)
destination = ENV.fetch('JEKYLL_DESTINATION', File.join(root, '_site'))
page = Nokogiri::HTML(File.read(File.join(destination, 'publications/index.html')))
entries = page.css('.publication-entry')
records = Dir[File.join(root, '_publications/*.md')].map do |path|
  YAML.safe_load(File.read(path).split(/^---\s*$\n?/, 3)[1], permitted_classes: [Date, Time])
end
labels = { 'link' => 'Paper', 'pdf' => 'PDF', 'acm' => 'Publisher', 'arxiv' => 'arXiv', 'code' => 'Code', 'github' => 'Code', 'slides' => 'Slides', 'video' => 'Video', 'poster' => 'Poster' }
rankings = YAML.safe_load(File.read(File.join(root, '_data/venue_rankings.yml')))
normalize = ->(text) { Nokogiri::HTML.fragment(text.to_s).text.gsub(/\s+/, ' ').strip }

raise 'Lost publication records' unless entries.size == records.size
raise 'Publication numbering changed' unless page.css('.publication-number').map { |node| node.text.to_i } == (1..records.size).to_a

records.each do |record|
  entry = entries.find { |node| normalize.call(node.at_css('.publication-title-text').inner_html) == normalize.call(record.fetch('title')) }
  raise "Missing paper: #{record['title']}" unless entry
  raise "Changed authors: #{record['title']}" unless normalize.call(entry.at_css('.publication-authors').inner_html) == normalize.call(record['authors'])
  raise "Missing venue: #{record['title']}" unless normalize.call(entry.at_css('.publication-venue').text).include?(record['venue'])
  raise 'Date changed' unless entry.at_css('time')['datetime'] == record.fetch('date').to_s[0, 10]
  raise 'Flag lost' if record['flag'] && !entry.text.include?(record['flag'])
  expected = labels.filter_map do |field, label|
    href = record[field].to_s.strip
    [href, label] unless href.empty? || href == '#'
  end
  actual = entry.css('.publication-actions a').map { |link| [link['href'], link.text.strip] }
  raise "Resource links changed: #{record['title']}" unless actual == expected
  raise 'Icon-only resource remains' unless entry.css('.publication-actions i').empty?

  key = record['venueabbr'] || record['venue']
  ranking = rankings.fetch('venues').fetch(key)
  badges = entry.css('.publication-rankings .ranking-badge')
  expected_ranks = ["CCF #{ranking['ccf'] || '—'}", "CORE #{ranking['core'] || '—'}"]
  raise "Missing or incorrect rankings: #{key}" unless badges.map { |badge| normalize.call(badge.text) } == expected_ranks
  raise 'Rankings must follow the venue' unless entry.at_css('.publication-venue').element_children.last['class'] == 'publication-rankings'
  badges.zip(%w[ccf core]).each do |badge, system|
    raise "Missing ranking explanation: #{key}" if badge['title'].to_s.empty?
    if ranking[system]
      raise "Missing official ranking link: #{key}" unless badge.name == 'a' && badge['href'].start_with?('https://')
    else
      raise "Unranked venue is linked as a ranking: #{key}" unless badge['class'].include?('rank-na') && badge.name == 'span'
    end
  end
end

%w[CIKM WSDM].each do |key|
  raise "Incorrect 2026 rank for #{key}" unless rankings['venues'][key].values_at('ccf', 'core') == %w[B A]
end
['TODS', 'VLDBJ', 'SIGMOD Record', 'Preprint'].each do |key|
  raise "Conference rank applied to #{key}" if rankings['venues'][key]['core']
end
raise 'PVLDB conference mapping missing' unless rankings['venues']['PVLDB']['core_acronym'] == 'VLDB' && page.at_css('.publication-ranking-note').text.include?('VLDB conference')

years = page.css('.publication-year').map { |node| node['id'].delete_prefix('year-') }
raise 'Year groups out of order' unless years == years.sort.reverse
raise 'Google Scholar link missing' unless page.at_css('.scholar-link')
puts "PASS: #{records.size} publications retain their content and resource URLs; all have sourced venue ranking badges, with journals and unranked venues handled separately."
