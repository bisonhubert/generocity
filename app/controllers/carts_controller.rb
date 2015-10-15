class CartsController < ApplicationController

  skip_before_filter :verify_authenticity_token
  before_action :authenticate_user!


  def show
    cart_ids = $redis.hkeys current_user_cart
    @cart_items = Item.find(cart_ids)
    @donation_centers = DonationCenter.all
  end

  def add
    $redis.hincrby current_user_cart, params[:item_id], params[:quantity].to_i
    render json: current_user.cart_count, status: 200
  end

  def update
    $redis.hset current_user_cart, params[:item_id], params[:quantity].to_i
    render :json => { "new_count" => current_user.cart_count, "new_item_price" => (Item.find(params[:item_id]).price * ($redis.hget current_user_cart, params[:item_id]).to_i), "new_total_price" => current_user.cart_total_price }
  end

  def remove
    $redis.hdel current_user_cart, params[:item_id]
    render json: current_user.cart_count, status: 200
  end

  private

  def current_user_cart
    "cart#{current_user.id}"
  end
end