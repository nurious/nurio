class AddOrganizationToPosition < ActiveRecord::Migration
  def change
    add_reference :positions, :organization, index: true
  end
end
