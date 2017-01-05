class HomeController < ApplicationController
  def index
    @products_group_by_categories = Admin::Product.all.group_by{|product| product.admin_category}
  end
end
