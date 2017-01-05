class HomeController < ApplicationController
  def index
    @products = Admin::Product.all.page(params[:page]).per(12)
  end
end
