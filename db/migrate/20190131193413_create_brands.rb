class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :name
      t.text :description
      t.text :icon

      t.timestamps
    end
  end
end
