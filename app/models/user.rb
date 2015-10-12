class User < ActiveRecord::Base
  has_many :orders, foreign_key: :donor_id
  has_many :items, through: :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def cart_count
    $redis.scard "cart#{id}"
  end

  def cart_total_price
    total_price = 0
    get_cart_items.each { |item| total_price+= item.price }
    total_price
  end

  def get_cart_items
    cart_ids = $redis.smembers "cart#{id}"
    Item.find(cart_ids)
  end

  def purchase_cart_items! # Add cart items to items collection and then clear the cart
    get_cart_items.each { |item| purchase(item) }
    $redis.del "cart#{id}"
  end

  def purchase(item) # Add item to items if not in items already
    items << item unless purchase?(item)
  end

  def purchase?(item) # Check if item is in items (a collection belonging to the user through orders)
    items.include?(item)
  end

  def has_payment_info?
    braintree_customer_id
  end
end
