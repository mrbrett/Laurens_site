json.array!(@homepage_tiles) do |homepage_tile|
  json.extract! homepage_tile, :id, :text
  json.url homepage_tile_url(homepage_tile, format: :json)
end
