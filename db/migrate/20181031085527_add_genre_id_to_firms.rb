class AddGenreIdToFirms < ActiveRecord::Migration[4.2]
  def change
    add_column :firms, :genre_id, :integer
  end
end
