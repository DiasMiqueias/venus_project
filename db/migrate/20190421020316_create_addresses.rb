class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :city
      t.string :state
      t.string :neighborhood
      t.string :street
      t.string :number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
