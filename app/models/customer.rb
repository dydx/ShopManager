class Customer < ActiveRecord::Base
  has_many :vehicles
  has_many :work_orders, through: :vehicles
end
