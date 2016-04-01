class Organization < ActiveRecord::Base
  belongs_to :country
  after_create :create_tenant

  def create_tenant
    Apartment::Tenant.create(name)
  end
end
