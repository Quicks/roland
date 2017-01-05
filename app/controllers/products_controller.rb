class ProductsController < ApplicationController
  def by_category
    @products = Admin::Category.find(params[:cat_id]).admin_products
  end

  def show
  end
end
