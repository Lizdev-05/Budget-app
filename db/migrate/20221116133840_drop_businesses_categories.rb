class DropBusinessesCategories < ActiveRecord::Migration[7.0]
  def change
    drop_table :businesses_categories
    
  end
end
