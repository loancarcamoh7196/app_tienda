class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image
      t.float :value
      t.string :size
      t.boolean :availability

      t.timestamps
    end
  end
end
