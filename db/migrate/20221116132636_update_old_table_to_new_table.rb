class UpdateOldTableToNewTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :transactions, :businesses
  end
end

