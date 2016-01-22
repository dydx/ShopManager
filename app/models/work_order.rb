class WorkOrder < ActiveRecord::Base
  belongs_to :vehicle
  has_one :customer, through: :vehicle
  has_many :repairs
end
