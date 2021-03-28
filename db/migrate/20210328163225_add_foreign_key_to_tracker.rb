class AddForeignKeyToTracker < ActiveRecord::Migration[6.1]
  def change
    add_reference :trackers, :user, index: true, null: false
  end
end
