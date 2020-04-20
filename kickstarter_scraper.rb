require "nokogiri"
require "pry"

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects =  kickstarter.css("li.project.grid_4").first
  #image = projects.css("img.projectphoto-little").attribute("src").text
  #title = project.css("h2.bbcard_name strong a").text
  #location = projects.css("span.location-name").text

end

create_project_hash
