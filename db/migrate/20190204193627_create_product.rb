class CreateProduct < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.binary :image
      t.string :availability
      t.string :color
      t.references :brand, foreign_key: true
      t.references :category, foreign_key: true
    end
  end
end
