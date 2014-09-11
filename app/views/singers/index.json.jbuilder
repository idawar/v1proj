json.array!(@singers) do |singer|
  json.extract! singer, :id, :first_name, :last_name, :sex, :age
  json.url singer_url(singer, format: :json)
end
