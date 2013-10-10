require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'

configure do
	CONN = PG.connect(db_name: 'ga-class', host: 'localhost')
end

def query(sql)
	CONN.exec(sql)
end

get '/posts' do
  @posts = query("SELECT * FROM blog")
  erb :post_index
end

get '/posts/:id' do
  @post = query("SELECT * FROM blog where id = #{params[:id]} LIMIT 1")
  erb :post_show
end

get '/posts/new' do

  erb :post_new
end

post '/posts/create' do
  

end
