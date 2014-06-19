json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :title, :description, :date, :due
  json.url assigment_url(assignment, format: :json)
end
