class Customer < ActiveRecord::Base
  has_many :vehicles
  has_many :work_orders, through: :vehicles

  def full_name
    "#{first_name} #{last_name}"
  end
end
