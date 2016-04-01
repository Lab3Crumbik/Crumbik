class Country < ActiveRecord::Base
  has_many :users
  has_many :organizations
  has_one :profile
end
