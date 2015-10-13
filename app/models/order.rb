class Order < ActiveRecord::Base
  belongs_to :item
  belongs_to :donor, class_name: 'User'
end
