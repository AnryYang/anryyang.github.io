# Run after building: bundle exec ruby _tests/profile_test.rb
require 'yaml'
require 'nokogiri'

root = File.expand_path('..', __dir__)
destination = ENV.fetch('JEKYLL_DESTINATION', File.join(root, '_site'))
author = YAML.safe_load_file(File.join(root, '_config.yml'), aliases: true).fetch('author')
expected = [
  ['Twitter', "https://twitter.com/#{author.fetch('twitter')}"],
  ['RedNote', author.fetch('rednote')],
  ['GitHub', "https://github.com/#{author.fetch('github')}"]
]

%w[index.html publications/index.html team/index.html datasets/index.html misc/index.html].each do |path|
  page = Nokogiri::HTML(File.read(File.join(destination, path)))
  links = page.css('.author__urls a').map { |link| [link.text.strip, link['href']] }
  index = links.index { |label, _| label == 'Twitter' }
  raise "Social link order incorrect: #{path}" unless index && links[index, 3] == expected
  expected.each do |entry|
    raise "Missing or duplicated #{entry.first} link: #{path}" unless links.count(entry) == 1
  end
end

puts 'PASS: Twitter, RedNote and personal GitHub appear once and in order on all five main pages.'
