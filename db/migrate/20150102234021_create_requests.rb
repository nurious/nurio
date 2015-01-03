class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :title
      t.text :description
      t.references :user, index: true
      t.references :department, index: true
      t.references :organization, index: true

      t.timestamps
    end
  end
end
