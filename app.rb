require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('./**/*.rb')

get('/') do
  erb(:index)
end

get('/parcel') do
  length = params.fetch('length')
  height = params.fetch('height')
  width = params.fetch('width')
  speed = params.fetch('speed')

  @parcel = Parcel.new(length, height, width, speed)
  @price = @parcel.expidite()
  erb(:result)
end
