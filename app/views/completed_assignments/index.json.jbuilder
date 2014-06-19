json.array!(@completed_assignments) do |completed_assignment|
  json.extract! completed_assignment, :id, :student_id, :assignment_id
  json.url completed_assignment_url(completed_assignment, format: :json)
end
