class CreateJobGroups < ActiveRecord::Migration
  def change
    create_table :job_groups do |t|
      t.string :group
      t.float :pay
    end
  end
end
