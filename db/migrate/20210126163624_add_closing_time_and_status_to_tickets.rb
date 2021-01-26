class AddClosingTimeAndStatusToTickets < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :closing_time, :datetime
    add_column :tickets, :status, :integer, default: 0
  end
end
