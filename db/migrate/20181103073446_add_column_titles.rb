class AddColumnTitles < ActiveRecord::Migration[4.2]
  def change
    add_column :firms, :genre, :text
  end
end
