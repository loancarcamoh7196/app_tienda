class CreateSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :sizes do |t|
      t.string :description
      t.references :type_size, foreign_key: true

      t.timestamps
    end
  end
end
