require 'sinatra'
require 'sass'

PROJECTS = [
	{
	 	"title" => "Call to Action",
	 	"subtitle" => "MIT's Center for Civic Media / January-June 2013",
	 	"description" => "An interface made in HTML, CSS, and JavaScript for 
	 	<a href='http://calltoaction.mit.edu'>Call To Action</a>, an open-source web platform 
	 	for creating telephone-based services being developed at 
	 	<a href='http://civic.mit.edu/'>MIT's Center for Civic Media</a>.",
	 	"url" => "https://github.com/rodrigodavies/call2action/",
	 	"img" => "/img/calltoaction.jpg"
		},
	{
		"title" => "StageIt",
		"subtitle" => "Final Project",
		"description" => "A small application created with HTML, CSS, JavaScript using Parse
		for 6.813, the User Interface Design and Implementation class at MIT",
		"url" => "https://github.com/6813-stageIt/stageIt",
		"img" => "/img/stageit.jpg"
	},
	{
		"title" => "Hunters and Zombies",
		"subtitle" => "Android App",
		"description" => "A geolocation game made for Android phones in 21W.789, the Communicating
		with Mobile Technology class.",
		"url" => "https://github.com/TeamGamey/HuntersAndZombiesDemo",
		"img" => "/img/huntersandzombies.png"
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
	@page = "recent projects"
	@projects = PROJECTS
	erb :main
end
not_found do
  'Whoops......this page does not exist!'
end
