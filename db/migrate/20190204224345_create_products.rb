class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.binary :image
      t.boolean :availability
      t.float :value
      t.float :offer_value
      t.float :dcto
      t.boolean :offer
      t.references :brand, foreign_key: true
      t.references :category, foreign_key: true
      t.string :model
      t.references :material, foreign_key: true

      t.timestamps
    end
  end
end
