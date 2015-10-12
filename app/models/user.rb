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
end
