ActiveAdmin.register Request do
  permit_params :user_id, :employee_name, :start_date, :end_date, :leave_type
  index do
    selectable_column
    id_column
    column :employee_name
    column :start_date
    column :end_date
    column :leave_type
    actions
  end

  filter :employee_name
  filter :start_date
  filter :end_date
  filter :leave_type

  
  form do |f|
    f.inputs "Employee Details" do
    
      f.input :employee_name
      f.input :start_date
      f.input :end_date
      f.input :leave_type
      
    #      f.select :sex, [['Male', 'male'],['Female', 'female']]
     
    end
    f.actions
  end


end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


