class AddHoursMinsAndSeconds < ActiveRecord::Migration[6.1]
  def change
    add_column :sports, :hours, :integer
    add_column :sports, :seconds, :integer
    rename_column :sports, :time, :minutes
  end
end
