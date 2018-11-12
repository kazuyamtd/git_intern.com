class AddColumnTitles < ActiveRecord::Migration
  def change
    add_column :firms, :genre, :text
  end
end
