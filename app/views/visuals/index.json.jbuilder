json.array!(@visuals) do |visual|
  json.extract! visual, :id, :title, :description
  json.url visual_url(visual, format: :json)
end
