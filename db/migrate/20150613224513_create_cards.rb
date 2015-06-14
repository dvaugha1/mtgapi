class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string "name"
      t.string "type"
      t.string "edition"
      t.string "rarity"
      t.string "artist"
      t.text "rule"
      t.text "flavor"
      t.text "mana"
      t.integer "attack"
      t.integer "toughness"
      t.timestamps null: false
    end
  end
end
