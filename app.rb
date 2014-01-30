require 'sinatra'
require 'sass'

PROJECTS = [
	{
	 	"title" => "Call to Action",
	 	"subtitle" => "JavaScript Prototype / January-June 2013",
	 	"description" => "An interface made in HTML, CSS, and JavaScript for 
	 	<a class='bold' href='http://calltoaction.mit.edu'>Call To Action</a>, an open-source web platform 
	 	for creating telephone-based services being developed at 
	 	<a class='bold' href='http://civic.mit.edu/'>MIT's Center for Civic Media</a>.",
	 	"url" => "https://github.com/rodrigodavies/call2action/",
	 	"img" => "/img/calltoaction.jpg"
		},
	{
		"title" => "StageIt",
		"subtitle" => "Web Application / Spring 2013",
		"description" => "A small application created with HTML, CSS, JavaScript using Parse
		for <a class='bold' href='http://courses.csail.mit.edu/6.831/'>6.813, the User Interface Design and Implementation</a> class at MIT. In a team of 3 students, 
		we conducted user studies and created prototypes to design the interface. 
		Our application was made to help choreographers place dancers on stage,
		and more easily create formations - placements of dancers at a particular time step.",
		"url" => "https://github.com/6813-stageIt/stageIt",
		"img" => "/img/stageit.jpg"
	},
	{
		"title" => "Hunters and Zombies",
		"subtitle" => "Android Application / Spring 2013",
		"description" => "A geolocation game made for Android phones in <a class='bold' href='http://web.mit.edu/21w.789/www/'>21W.789, the Communicating
		with Mobile Technology class</a>. In a team of 4 students, we conducted generative studies to come up with the concept of the
		game, and then designed the flow of the game using paper prototypes and user testing. The Android game was implemented using Google Maps API, GPS and WiFi location
		services, and Parse.",
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
