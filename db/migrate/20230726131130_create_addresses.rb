class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.bigint  :addressable_id
      t.string  :addressable_type
      t.string :line1
      t.string :city
      t.string :zipcode

      t.timestamps
    end
  end
end
