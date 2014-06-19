json.array!(@assigments) do |assigment|
  json.extract! assigment, :id, :title, :description, :date, :due
  json.url assigment_url(assigment, format: :json)
end
