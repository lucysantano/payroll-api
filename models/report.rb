class Report < ActiveRecord::Base
  validates :name, presence: true
  has_many :work_logs
end