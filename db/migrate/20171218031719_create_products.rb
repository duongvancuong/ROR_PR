class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name,       null: false
      t.text :description,  null: true
      t.float :price,       null: false

      t.timestamps
    end
  end
end
