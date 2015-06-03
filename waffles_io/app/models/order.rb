class Order < ActiveRecord::Base

  validates :customer_name, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true }, inclusion: {in: 1..5}
  validates :waffle_type, presence: true

end
