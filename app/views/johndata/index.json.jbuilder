json.array!(@johndata) do |johndatum|
  json.extract! johndatum, :id, :what, :is, :your, :name, :bio, :birthday
  json.url johndatum_url(johndatum, format: :json)
end
