class RenameOldTableToNewTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :entities, :transactions
    rename_table :groups, :categories
  end
end


#  create_table "entities_groups", id: false, force: :cascade do |t|
# t.bigint "entity_id", null: false
# t.bigint "group_id", null: false
# t.index ["entity_id"], name: "index_entities_groups_on_entity_id"
# t.index ["group_id"], name: "index_entities_groups_on_group_id"
# end
