class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :employee_name
      t.date :start_date
      t.date :end_date
      t.string :leave_type
      t.string :user_id

      t.timestamps null: false
    end
  end
end
