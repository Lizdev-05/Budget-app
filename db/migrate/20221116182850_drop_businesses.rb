class DropBusinesses < ActiveRecord::Migration[7.0]
  def change
    drop_table :businesses
  end
end
