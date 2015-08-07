json.array!(@requests) do |request|
  json.extract! request, :id, :employee_name, :start_date, :end_date, :leave_type, :user_id
  json.url request_url(request, format: :json)
end
