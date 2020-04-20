require "nokogiri"
require "pry"

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects = {}
  kickstarter.css("li.project.grid_4").each do |project|
      title = project.css("h2.bbcard_name strong a").text
      projects[title.to_sym] = {
        :image_link => projects.css("img.projectphoto-little").attribute("src").text
        :description =>
      }
  #image = projects.css("img.projectphoto-little").attribute("src").text

  #location = projects.css("span.location-name").text
  percent = projects.css("li.first.funded strong").text

end

create_project_hash
