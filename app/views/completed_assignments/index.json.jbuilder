json.array!(@completed_assignments) do |completed_assignment|
  json.extract! completed_assignment, :id, :user, :assignment, :on_time, :github_url
  json.url completed_assignment_url(completed_assignment, format: :json)
end
