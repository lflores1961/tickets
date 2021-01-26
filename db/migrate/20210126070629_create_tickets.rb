class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.integer :order_number
      t.date :order_date
      t.references :client, null: false, foreign_key: true
      t.text :equipment_descrip
      t.string :equipment_password
      t.text :equipment_state
      t.text :observations
      t.text :diagnostic
      t.money :cost

      t.timestamps
    end
  end
end
