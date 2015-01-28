post '/maps' do
  my_map = current_user.maps.create(params[:map])
  points = parse_user_text(my_map.user_text)
  create_points(points, my_map)
  p map_points = my_map.points.all
  content_type :json
  {map: my_map, points: map_points}.to_json
end

get '/maps/new' do
  erb :'maps/new'
end

get '/maps/:map_id' do
  @map = Map.find(params[:map_id])
  erb :'maps/show'
end

