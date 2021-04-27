class CreateSports < ActiveRecord::Migration[6.1]
  def change
    create_table :sports do |t|
      t.string :name
      t.integer :time
      t.integer :distance
      t.string :type
      t.string :notes

      t.timestamps
    end
  end
end
