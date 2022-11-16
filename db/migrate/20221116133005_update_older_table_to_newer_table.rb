class UpdateOlderTableToNewerTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :businesses, :categories do |t|
      t.index :business_id
      t.index :category_id
    end
  end
end