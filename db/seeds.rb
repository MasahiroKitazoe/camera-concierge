require 'csv'

# csv_data = CSV.read('db/camera_types.csv', headers: true)
# csv_data.each do |data|
#   CameraType.create!(data.to_hash)
# end

# csv_data = CSV.read('db/finders.csv', headers: true)
# csv_data.each do |data|
#   Finder.create!(data.to_hash)
# end

# csv_data = CSV.read('db/frames.csv', headers: true)
# csv_data.each do |data|
#   Frame.create!(data.to_hash)
# end

# csv_data = CSV.read('db/makers.csv', headers: true)
# csv_data.each do |data|
#   Maker.create!(data.to_hash)
# end

csv_data = CSV.read('db/cameras.csv', headers: true)
csv_data.each do |data|
  Camera.create!(data.to_hash)
end
