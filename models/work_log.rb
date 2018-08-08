class WorkLog < ActiveRecord::Base
  field :employee_id, type: String
  field :date, type: Date
  field :hours, type: Float
  belongs_to :report
  has_one :job_group
end