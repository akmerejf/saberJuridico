json.array!(@artigos) do |artigo|
  json.extract! artigo, :titulo, :autor, :pdf
  json.url artigo_url(artigo, format: :json)
end
