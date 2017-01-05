class Admin::Category
  include Mongoid::Document
  field :title, type: String

  has_many :admin_products, :class_name => 'Admin::Product'
end
