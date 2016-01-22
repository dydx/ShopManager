class Vehicle < ActiveRecord::Base
  belongs_to :customer
  has_many :work_orders
  has_many :repairs, through: :work_orders

  def description
    "#{year} #{make} #{model}"
  end
end
