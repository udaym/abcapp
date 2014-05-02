json.array!(@abcaps) do |abcap|
  json.extract! abcap, :id, :name, :address
  json.url abcap_url(abcap, format: :json)
end
