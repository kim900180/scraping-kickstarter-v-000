# require libraries/modules here
require 'nokogiri'
require 'pry'

# projects: kickstarter.css("li.projejct.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# project.css("div.project-thumbnail a img").attribute("src").value
# project.css("p.bbcard_blurb").text
# project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i

def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

  projects = {}

  kickstarter.css("li.project.grid_4").each do |project|
    projects[project] = {}
  end

  binding.pry

end

create_project_hash
