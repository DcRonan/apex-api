class DeleteTypeColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :sports, :type
  end
end
