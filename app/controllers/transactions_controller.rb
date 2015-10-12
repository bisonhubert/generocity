class TransactionsController < ApplicationController
  before_action :authenticate_user! # Check that user is signed in
  before_action :check_cart! # Check that cart has items

  def new
  end

  private
  def check_cart!
    if current_user.get_cart_items.blank?
      redirect_to root_url, alert: "Please add some items to your cart before processing your transaction!"
    end
  end
end
