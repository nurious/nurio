class AddOrganizationToUser < ActiveRecord::Migration
  def change
    add_reference :users, :organization, index: true
  end
end
