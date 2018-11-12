class AddGenreIdToFirms < ActiveRecord::Migration
  def change
    add_column :firms, :genre_id, :integer
  end
end
