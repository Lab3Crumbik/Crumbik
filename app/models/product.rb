class Product < ActiveRecord::Base
  has_many :advertising_campaigns
  has_many :interactions
end
