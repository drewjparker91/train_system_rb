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
  train = Train.new({:name => name, :id => nil})
  train.save()
  redirect to('/trains')
end

post('/trains/:id') do
  name = params[:city_name]

end

patch('/trains/:id') do
  @train = Train.find(params[:id].to_i())
  @train.update(params[:train_name])
  redirect to('/trains')
end

delete('/trains/:id') do
  @train = Train.find(params[:id].to_i())
  @train.delete()
  redirect to('/trains')
end

get('/cities') do
  @cities = City.all
  erb(:cities)  
end

get('/cities/new') do
  erb(:new_city)
end

get('/cities/:id') do
  @city = City.find(params[:id].to_i())
  erb(:city)
end

get('/cities/:id/edit') do
  @city = City.find(params[:id].to_i())
  erb(:edit_city)
end

post('/cities') do
  name = params[:city_name]
  city = City.new({:name => name, :id => nil})
  city.save()
  redirect to('/cities')
end

patch('/cities/:id') do
  @city = City.find(params[:id].to_i())
  @city.update(params[:city_name])
  redirect to('/cities')
end

delete('/cities/:id') do
  @city = City.find(params[:id].to_i())
  @city.delete()
  redirect to('/cities')
end





