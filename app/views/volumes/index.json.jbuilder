json.array!(@volumes) do |volume|
  json.extract! volume, :edicao
  json.url volume_url(volume, format: :json)
end
