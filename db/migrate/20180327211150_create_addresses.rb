class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.text :description
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip

      t.references :addresses, :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
