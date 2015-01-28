get '/sessions/new' do
  erb :'sessions/new'
end

get '/sessions/logout' do
  # using a get route so that I don't need to make a form....
  logout
  redirect '/'
end

post '/sessions' do
  login
end
