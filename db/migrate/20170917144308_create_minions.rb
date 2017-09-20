class CreateMinions < ActiveRecord::Migration[5.0]
  def change
    create_table :minions do |t|

      t.timestamps
    end
  end
end
