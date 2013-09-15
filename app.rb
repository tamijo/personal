require 'sinatra'
require 'sass'

PROJECTS = [
	{
	 	"title" => "Call to Action",
	 	"subtitle" => "User Interface",
	 	"description" => "derp",
	 	"url" => "derp",
	 	"img" => "derp"
		},
	{
		"title" => "StageIt",
		"subtitle" => "Final Project",
		"description" => "A small application created with HTML, CSS, JavaScript using Parse
		for 6.813, the User Interface Design and Implementation class at MIT",
		"url" => "https://github.com/6813-stageIt/stageIt",
		"img" => "not quite there yet"
	},
	{
		"title" => "Hunters and Zombies",
		"subtitle" => "Android App",
		"description" => "A geolocation game made for Android phones in 21W.789, the Communicating
		with Mobile Technology class.",
		"url" => "https://github.com/TeamGamey/HuntersAndZombiesDemo",
		"img" => "not quite there yet"
	}
]


get '/' do
	erb :index
end
get '/about' do
	@page = "about"
	erb :main
end
get '/projects' do
	@page = "projects"
	@projects = PROJECTS
	erb :main
end
not_found do
  'Whoops......this page does not exist!'
end
