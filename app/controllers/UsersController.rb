get '/users/new' do
  erb :'users/new'
end

post '/users' do
  create_user
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/profile'
end

get '/users/:user_id/maps/:map_id' do
  @user = User.find(params[:user_id])
  @map = Map.find(params[:map_id])
  erb :'maps/show'
end


