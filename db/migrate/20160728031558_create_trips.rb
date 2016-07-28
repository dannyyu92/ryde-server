class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.datetime :pickup_date, null: false
      t.decimal :fare, precision: 19, scale: 4, null: false
      t.boolean :surge, default: false, null: false
      t.string :car, null: false
      t.string :city, null: false
      t.string :payment_method_type, null: false
      t.string :cc_last_4

      t.references :driver, index: true, null: false
      t.timestamps
    end
  end
end
