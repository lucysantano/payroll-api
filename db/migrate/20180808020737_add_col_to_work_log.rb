class AddColToWorkLog < ActiveRecord::Migration
  def change
    add_reference :work_logs, :reports, index: true
    add_reference :work_logs, :job_groups, index: true
  end
end
