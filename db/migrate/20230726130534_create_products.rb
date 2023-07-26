class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.decimal :price
      t.text :label

      t.timestamps
    end
  end
end
