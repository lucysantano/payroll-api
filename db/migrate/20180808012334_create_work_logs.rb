class CreateWorkLogs < ActiveRecord::Migration
  def change
    create_table :work_logs do |t|
      t.string :employee_id
      t.date :date
      t.float :hours
    end
  end
end
