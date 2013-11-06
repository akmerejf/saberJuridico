json.array!(@volumes) do |volume|
  json.extract! volume, :titulo, :autor
  json.url volume_url(volume, format: :json)
end
