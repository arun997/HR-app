ActiveAdmin.register Employee do
    
    permit_params :first_name, :last_name, :address, :phone, :email, :hire_date, :dept, :role, :salary, :manager

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


end
