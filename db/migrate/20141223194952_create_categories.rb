class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.references :position, index: true

      t.timestamps
    end
  end
end
