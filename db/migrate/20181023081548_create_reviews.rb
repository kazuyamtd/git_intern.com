class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rate
      t.integer :length
      t.text :test
      t.text :review
      t.integer :firm_id
      t.integer :user_id
      t.timestamps 
    end
  end
end
