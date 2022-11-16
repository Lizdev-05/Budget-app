class AddUserRefToEntity < ActiveRecord::Migration[7.0]
  def change
    add_reference :transactions, :author, null: false, foreign_key: { to_table: :users }
  end
end
