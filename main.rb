require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'

configure do
	CONN = PG.connect(dbname: 'blog', host: 'localhost')
end

def query(sql)
	CONN.exec(sql)
end

get '/posts' do
  @posts = query("SELECT * FROM blog")
  erb :post_index
end

get '/posts/new' do
  erb :post_new
end

post '/posts/create' do
	title = params[:title].gsub(/['"]/, "''")
	body = params[:body].gsub(/['"]/, "''")
	query("INSERT INTO blog (title, body) VALUES ('#{title}', '#{body}')")
	redirect '/posts'
end

get '/posts/:id' do
  @post = query("SELECT * FROM blog where id = #{params[:id]} LIMIT 1").first
  erb :post_show
end

get '/posts/:id/edit' do
  @post = query("SELECT * FROM blog where id = #{params[:id]} LIMIT 1").first
  erb :post_edit
end

post '/posts/:id/update' do
  query("UPDATE blog SET title='#{params[:title]}', body='#{params[:body]}' WHERE id=#{params[:id]}")
  redirect '/posts'
end


post '/posts/:id/delete' do
  query("DELETE FROM blog WHERE id=#{params[:id]}")
  redirect '/posts'
end

