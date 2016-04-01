class AddCountryRefToOrganizations < ActiveRecord::Migration
  def change
    add_reference :organizations, :country, index: true, foreign_key: true
  end
end
