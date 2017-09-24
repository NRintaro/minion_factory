class AddColumnToMinion < ActiveRecord::Migration[5.0]
  def change
    add_column :minions, :name, :string
  end
end
