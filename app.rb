require 'sinatra'

get '/' do
	erb :index
end
get '/about' do
	"Coming soon!"
end
get '/projects' do
	"Comming soon!"
end
get '/resume' do
	"Coming soon!"
end
not_found do
  'Whoops......this page does not exist!'
end
