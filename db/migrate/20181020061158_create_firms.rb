class CreateFirms < ActiveRecord::Migration
  def change
    create_table :firms do |t|
      t.string :name
      t.text   :image
      t.string :industry
      t.text   :description
      t.timestamps 
    end
  end
end
