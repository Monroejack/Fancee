class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_brands

  helper_method :current_order

def current_order
  if session[:order_id]
    Order.find(session[:order_id])
  else
    Order.new
  end
end

  protected
  def set_brands
    @brands = Product.all.pluck(:brand).uniq.sort
  end
end
