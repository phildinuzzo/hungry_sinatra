
require 'pry'
gem 'sinatra', '1.3.0'
require 'sinatra'
require 'sinatra/reloader'

get '/' do 
@result = "ARE YOU HUNGRY?"
@but1 = "<a href='/eat'>YES!</a>"
@but2 = "<a href='/run'>Nope.</a>"
erb :tester  
end

get '/eat' do
@result = "EAT SOME FOOD, DUMMY."
@but1 = "<a href='/kill'>OK</a>"
@but2 = "<a href='/run'>I REFUSE</a>"
erb :tester
end

get '/run' do
@result = "GO PUSH A HOOP WITH A STICK DOWN A DIRT ROAD"
@but1 = "<a href='/'>FINE.</a>"
erb :tester
end

get '/kill' do
@result = "KILL AN ANIMAL AND EAT IT"
@but1 = "<a href='/fail'>I CAN'T!</a>"
@but2 = "<a href='/win'>Good Idea</a>"
erb :tester
end

get '/fail' do
@result = "ONLY THE STRONG SURVIVE. YOU ARE WEAK AND DIE IN THE STREETS."
@but1 = "<a href='/dead'>You died, stop pressing buttons!</a>"
erb :tester
end

get '/win' do
@result = "YOU HAVE CONQUERED HUNGER... FOR NOW"
@but1 = "<a href='/'>Yummy.</a>"
erb :tester
end

get '/dead' do
@result = "END"
@but1 = "<a href='/'><img src='gravestone.jpg' alt='gravestone'/></a>"
erb :tester
end




