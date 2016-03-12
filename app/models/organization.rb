class Organization < ActiveRecord::Base
  after_create :create_tenant

  def create_tenant
    Apartment::Tenant.create(name)
  end
end
