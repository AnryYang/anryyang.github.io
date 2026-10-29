# Run after building: bundle exec ruby _tests/team_test.rb
require 'yaml'
require 'nokogiri'

root = File.expand_path('..', __dir__)
destination = ENV.fetch('JEKYLL_DESTINATION', File.join(root, '_site'))
team = YAML.safe_load_file(File.join(root, '_data/team.yml'))
page = Nokogiri::HTML(File.read(File.join(destination, 'team/index.html')))

{ 'current' => '.team-member', 'former' => '.team-alumnus' }.each do |group, selector|
  members = team.fetch(group)
  cards = page.css(selector)
  raise "Missing #{group} members" unless cards.size == members.size
  raise "Duplicate #{group} names" unless members.map { |member| member.fetch('name') }.uniq.size == members.size

  members.zip(cards).each do |member, card|
    member.each do |field, value|
      if field == 'url'
        raise "Wrong profile link: #{member['name']}" unless card.at_css('h3 a')&.[]('href') == value
      else
        expected = value.delete('🏆').strip
        raise "Missing #{field}: #{member['name']}" unless card.text.include?(expected)
      end
    end
  end
end

raise 'Team still uses tables' unless page.css('.archive table').empty?
raise 'Active navigation missing' unless page.at_css('nav a[aria-current="page"]')&.text == 'Team'
puts 'PASS: all team records, profile links, optional details and active navigation render correctly.'
