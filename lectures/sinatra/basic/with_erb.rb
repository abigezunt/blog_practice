require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	# this is inaccessible in the view
	something = "foo"
	@title = "Root"
	# This is accessible in the view
	@message = "Hello Index!"
	erb :hello
end

get '/colors' do
	@title = "Colors are pretty"
	@colors = ['red', 'green', 'blue']
	erb :colors
end

get '/hi' do
  "Hello World!"
end

get '/maths' do
	(1 + 9).to_s
end

get '/time' do
	Time.now.to_s
end

get '/advanced_time' do
	"<h1>The time is now #{Time.now}</h1><p>Wat</p>"
end

get '/maths/add/:x/:y' do
	x = params[:x].to_f
	y = params[:y].to_f
	(x + y).to_s
end

get '/maths/:operation/:x/:y' do
	x = params[:x].to_f
	y = params[:y].to_f
	operation = params[:operation].to_s
	case operation
		when 'add' then (x+y).to_s
		when 'subtract' then (x-y).to_s
		when 'multiply' then (x*y).to_s
		when 'divide' then (x/y).to_s
	end
end