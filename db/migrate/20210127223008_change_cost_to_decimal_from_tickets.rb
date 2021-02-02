class ChangeCostToDecimalFromTickets < ActiveRecord::Migration[6.0]
  change_table :tickets do |table|
    table.change :cost, :decimal, precision: 10, scale: 2
    table.rename :equipment_password, :clave_equipment
  end
end
