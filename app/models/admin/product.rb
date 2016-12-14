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
end
