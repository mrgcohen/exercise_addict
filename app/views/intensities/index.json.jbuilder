json.array!(@intensities) do |intensity|
  json.extract! intensity, :id, :name, :description
  json.url intensity_url(intensity, format: :json)
end
