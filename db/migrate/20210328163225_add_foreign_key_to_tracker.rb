class AddForeignKeyToTracker < ActiveRecord::Migration[6.1]
  def change
    add_reference :trackers, :user, index: true, null: false, foreign_key: true
  end
end
