class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :employee_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :phone
      t.string :email
      t.date :DOB
      t.date :hire_date
      t.string :dept
      t.string :role
      t.string :salary
      t.string :manager

      t.timestamps null: false
    end
  end
end
