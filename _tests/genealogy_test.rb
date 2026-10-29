# Run after building: bundle exec ruby _tests/genealogy_test.rb
require 'yaml'
require 'nokogiri'

root = File.expand_path('..', __dir__)
destination = ENV.fetch('JEKYLL_DESTINATION', File.join(root, '_site'))
people = YAML.safe_load_file(File.join(root, '_data/genealogy.yml'))
page = Nokogiri::HTML(File.read(File.join(destination, 'academic-roots/index.html')))
cards = page.css('.genealogy-person')
expected = [
  ['Michael Ralph Stonebraker', 1971], ['Timos Sellis', 1986],
  ['Dimitris Papadias', 1994], ['Yufei Tao', 2002],
  ['Xiaokui Xiao', 2008], ['Renchi Yang', 2021]
]
raise 'Doctoral lineage changed' unless people.map { |p| [p['name'], p['year']] } == expected
raise 'Missing genealogy cards' unless cards.size == people.size
people.zip(cards).each do |person, card|
  raise "Wrong name: #{person['name']}" unless card.at_css('h2').text.strip == person['name']
  raise 'Degree information changed' unless card.at_css('.genealogy-bio p').text == person['institution'] && card.at_css('time').text == person['year'].to_s
  raise 'Professor homepage link changed' unless card.at_css('h2 a')&.[]('href') == person['homepage']
  image = card.at_css('img')
  raise 'Portrait missing' unless File.file?(File.join(root, person['photo'].delete_prefix('/'))) && image['src'].end_with?(person['photo']) && image['alt'].include?(person['name'])
  raise 'Portrait credit missing' unless page.css('.genealogy-credits li').any? { |n| n.text.include?(person['name']) && n.text.include?(person['photo_credit']) }
end
raise 'Current researcher not highlighted' unless page.css('.genealogy-person--current').size == 1 && page.at_css('.genealogy-person--current h2').text.strip == 'Renchi Yang'
raise 'Old genealogy table still rendered' unless page.css('.archive table').empty?
raise 'Tidbit does not point to this site' unless page.css('.author__urls a').any? { |a| a.text.strip == 'Tidbit' && a['href'] == page.at_css('link[rel="canonical"]')['href'] }
branches = YAML.safe_load_file(File.join(root, '_data/genealogy_branches.yml'))
alumni = branches.fetch('groups').flat_map { |group| group.fetch('alumni') }
raise 'Duplicate faculty nodes' unless alumni.map { |a| a.fetch('id') }.uniq.size == alumni.size && alumni.map { |a| a.fetch('name') }.uniq.size == alumni.size
raise 'Faculty duplicated in the main lineage' unless (alumni.map { |a| a['name'] } & people.map { |p| p['name'] }).empty?
raise 'Missing faculty cards' unless page.css('.genealogy-faculty').size == alumni.size
branches.fetch('groups').each do |group|
  raise 'Unknown doctoral advisor' unless people.any? { |person| person['name'] == group['advisor'] }
  group.fetch('alumni').each do |alumnus|
    card = page.at_css("##{alumnus.fetch('id')}")
    generation = card.ancestors.find { |ancestor| ancestor['class'].to_s.split.include?('genealogy-generation') }
    raise "Incorrect doctoral edge: #{alumnus['name']}" unless generation.at_css('.genealogy-person h2').text.strip == group['advisor']
    raise 'Faculty profile link changed' unless card.at_css('h3 a')['href'] == alumnus.fetch('profile')
    %w[name position university].each { |field| raise "Missing faculty #{field}" unless card.text.include?(alumnus.fetch(field)) }
    if alumnus['photo']
      raise 'Missing faculty portrait file' unless File.file?(File.join(root, alumnus['photo'].delete_prefix('/')))
      raise 'Incorrect faculty portrait' unless card.at_css('img')['src'].end_with?(alumnus['photo'])
    else
      raise 'Unidentified portrait not labelled' unless card.at_css('[role="img"][aria-label]')&.[]('aria-label')&.include?('unavailable')
    end
    [alumnus['doctoral_source'] || group.fetch('doctoral_source'), alumnus.fetch('faculty_source')].each do |source|
      raise 'Missing evidence link' unless page.css('.genealogy-evidence a').any? { |a| a['href'] == source }
    end
    raise 'Historical appointment not labelled' if alumnus['status'] == 'former' && !card.text.include?('Former')
  end
end
puts "PASS: six main-line generations and #{alumni.size} faculty branches retain doctoral edges, appointments, portraits and evidence links."
