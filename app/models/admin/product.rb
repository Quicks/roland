class Admin::Product
  include Mongoid::Document
  field :age, type: String
  field :appointment, type: String
  field :application_time, type: String
  field :classification, type: String
  field :made_in, type: String
  field :volume, type: String
  field :desc, type: String
  field :title, type: String
  field :sex, type: String
  field :price, type: String

  belongs_to :admin_category, :class_name => 'Admin::Category'

  mount_uploader :img, ProductUploader
  validates :title, :desc, presence: true
  validates_presence_of :img
end
