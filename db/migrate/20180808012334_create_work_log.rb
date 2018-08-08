class CreateWorkLog < ActiveRecord::Migration
  def up
    create_table :work_log do |t|
      t.string :employee_id
      t.string :data
      t.string :hours
    end
  end

  def down
    drop_table :work_log
  end
end
