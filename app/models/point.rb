class Point < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :map
end
