json.array!(@entries) do |entry|
  json.extract! entry, :id, :feeling, :blurb
  json.url entry_url(entry, format: :json)
end
