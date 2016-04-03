class Rol < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :menu_options
  has_many :functions
end
