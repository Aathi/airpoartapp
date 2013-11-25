json.array!(@tests) do |test|
  json.extract! test, :name, :emailid, :encrypted_password
  json.url test_url(test, format: :json)
end
