json.array!(@volumes) do |volume|
  json.extract! volume, :titulo, :autor, :image
  json.url volume_url(volume, format: :json)
end
