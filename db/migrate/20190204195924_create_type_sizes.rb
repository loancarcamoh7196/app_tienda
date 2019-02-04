class CreateTypeSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :type_sizes do |t|
      t.string :description

      t.timestamps
    end
  end
end
