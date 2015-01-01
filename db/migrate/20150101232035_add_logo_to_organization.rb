class AddLogoToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :img_url, :string
  end
end
