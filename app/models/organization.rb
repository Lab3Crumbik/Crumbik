class Organization < ActiveRecord::Base
  belongs_to :country
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  after_create :create_tenant

  def create_tenant
    Apartment::Tenant.create(name)
  end


end
