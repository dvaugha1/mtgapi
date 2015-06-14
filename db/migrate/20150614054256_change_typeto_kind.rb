class ChangeTypetoKind < ActiveRecord::Migration
  def change
  	remove_column :cards, :type, :string
  	add_column :cards, :kind, :string
  end
end
