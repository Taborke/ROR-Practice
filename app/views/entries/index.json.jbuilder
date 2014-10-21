json.array!(@entries) do |entry|
  json.extract! entry, :id, :feeling, :blurb, :blogger_id, :tags
  json.url entry_url(entry, format: :json)
end
