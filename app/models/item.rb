class Item < ActiveRecord::Base
  has_many :orders
  has_many :donors, through: :orders

end
