require('sinatra')
    require('sinatra/reloader')
    also_reload('lib/**/*.rb')
    require('./lib/artist')
    require('./lib/music_store')

get('/') do
  erb(:index)
end
