class AddRolIdentity < ActiveRecord::Migration
  def change
    add_column :identities, :rol, :string
  end
end
