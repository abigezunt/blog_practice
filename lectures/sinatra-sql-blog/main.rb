require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'

configure do
	CONN = PG.connect(dbname: 'ga-class' ,host: 'localhost')
end

def query(sql)
	CONN.exec(sql)
end

get '/posts' do
	@posts = query("SELECT * FROM blog")
	erb :post_index
end

get '/posts/:id' do
	post_id = params[:id]
	@post = query("SELECT * FROM blog WHERE id = #{post_id} LIMIT 1").first
	erb :post_show
end

# This will be for showing the form to create new posts
get '/posts/new' do
	erb :post_new
end

post '/posts/create' do
	# I'll need something here to create a post
end