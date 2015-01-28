helpers do

  def parse_user_text(user_text)


  #     var alphabet = {
  #   " ": [
  #     new google.maps.LatLng(0, 0),
  #     new google.maps.LatLng(0, 1),
  #   ],
  #   "A": [
  #     new google.maps.LatLng(0, 0),
  #     new google.maps.LatLng(1, 0.5),
  #     new google.maps.LatLng(0.5, 0.25),
  #     new google.maps.LatLng(0.5, 0.75),
  #     new google.maps.LatLng(1, 0.5),
  #     new google.maps.LatLng(0, 1),
  #   ],
  #   "B": [
  #     new google.maps.LatLng(0, 0),
  #     new google.maps.LatLng(1, 0),
  #     new google.maps.LatLng(1, 1),
  #     new google.maps.LatLng(0.5, 1),
  #     new google.maps.LatLng(0.5, 0),
  #     new google.maps.LatLng(0, 0),
  #     new google.maps.LatLng(0, 1),
  #     new google.maps.LatLng(0.5, 1),
  #     new google.maps.LatLng(0, 1),
  #   ],
  #   "C": [
  #     new google.maps.LatLng(0, 0),
  #     new google.maps.LatLng(1, 0),
  #     new google.maps.LatLng(1, 1),
  #     new google.maps.LatLng(1, 0),
  #     new google.maps.LatLng(0, 0),
  #     new google.maps.LatLng(0, 1),
  #   ],
  #   "D": [
  #     new google.maps.LatLng(0, 0),
  #     new google.maps.LatLng(0, 1),
  #     new google.maps.LatLng(0, 0),
  #     new google.maps.LatLng(1, 0),
  #     new google.maps.LatLng(1, 1),
  #     new google.maps.LatLng(0, 1),
  #   ]
  # }

    #     new google.maps.LatLng(0, 0),
  #     new google.maps.LatLng(1, 0.5),
  #     new google.maps.LatLng(0.5, 0.25),
  #     new google.maps.LatLng(0.5, 0.75),
  #     new google.maps.LatLng(1, 0.5),
  #     new google.maps.LatLng(0, 1),

      library = {
                  a:  [
                        {
                          lat: 0,
                          lng: 0
                        },
                        {
                          lat: 1,
                          lng: 0.5
                        },
                        {
                          lat: 0.5,
                          lng: 0.25
                        },
                        {
                          lat: 0.5,
                          lng: 0.75
                        },
                        {
                          lat: 1,
                          lng: 0.5
                        },
                        {
                          lat: 0,
                          lng: 1
                        },
                      ],
                  b: [
                        {
                            lat: 0,
                            lng: 0
                          },
                          {
                            lat: 1,
                            lng: 0
                          },
                          {
                            lat: 1,
                            lng: 0.25
                          },
                          {
                            lat: 0.75,
                            lng: 0.5
                          },
                          {
                            lat: 0.5,
                            lng: 0.25
                          },
                          {
                            lat: 0.25,
                            lng: 0.5
                          },
                          {
                            lat: 0,
                            lng: 0.25
                          },
                          {
                            lat: 0,
                            lng: 0
                          },
                      ],
                  e: [
                        {
                            lat: 0,
                            lng: 0
                          },
                          {
                            lat: 1,
                            lng: 0
                          },
                          {
                            lat: 1,
                            lng: 1
                          },
                          {
                            lat: 1,
                            lng: 0
                          },
                          {
                            lat: 0.5,
                            lng: 0
                          },
                          {
                            lat: 0.5,
                            lng: 0.75
                          },
                                                    {
                            lat: 0.5,
                            lng: 0
                          },
                          {
                            lat: 0,
                            lng: 0
                          },
                          {
                            lat: 0,
                            lng: 1
                          },
                      ],
                }


    user_text_letters = user_text.split("")
    current_point = {lat: 0, lng: 0}
    output_points = []
    user_text_letters.each do |letter|
      library[letter.to_sym].each do |point|
        new_lat = (point[:lat] + current_point[:lat])
        new_lng = (point[:lng] + current_point[:lng])
        output_points << {lat: new_lat, lng: new_lng}
      end
      current_point[:lat] += 0
      current_point[:lng] += 2
    end
    p output_points
    return output_points
  end

  def create_points(points_collection, my_map)
    points_collection.map { |point|
      my_map.points.create(point)
    }
  end




end
