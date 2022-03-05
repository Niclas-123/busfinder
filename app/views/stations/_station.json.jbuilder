json.extract! station, :id, :name, :longitude, :latitude, :created_at, :updated_at
json.url station_url(station, format: :json)
