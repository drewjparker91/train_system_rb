require('sinatra')
require('sinatra/reloader')
require('./lib/train')
require('./lib/city')
require('pry')
require('pg')
also_reload('lib/**/*.rb')

DB = PG.connect({:dbname => "train_system"})

get('/') do
  redirect to('/trains')
end

get('/trains') do
  @trains = Train.all
  erb(:trains)
end

get('/trains/new') do
  erb(:new_train)
end

get('/trains/:id') do
  @train = Train.find(params[:id].to_i())
  erb(:train)
end

get('/trains/:id/edit') do
  @train = Train.find(params[:id].to_i())
  erb(:edit_train)
end

post('/trains') do
  name = params[:train_name]
  train = Train.new(:name => name, :id => nil)
  train.save()
  redirect to('/trains')
end

patch('/trains/:id') do
  @train = Train.find(params[:id].to_i())
  @train.update(params[:name])
  redirect to('/trains')
end

delete('/trains/:id/edit') do
  @train = Train.find(params[:id].to_i())
  @train.delete()
  redirect to('/trains')
end

