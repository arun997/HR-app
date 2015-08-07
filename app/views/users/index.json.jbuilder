json.array!(@employees) do |employee|
  json.extract! employee, :id, :employee_id, :first_name, :last_name, :address, :phone, :email, :DOB, :hire_date, :dept, :role, :salary, :manager
  json.url employee_url(employee, format: :json)
end
