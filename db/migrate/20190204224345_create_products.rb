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
      t.string :model
      t.references :brand, foreign_key: true
      #t.references :material, foreign_key: true

      t.timestamps
    end
  end
end
