class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :target
      t.string :type
      t.text :period
      t.string :place
      t.text :explanation
      t.text :deadline
      t.integer :firm_id
      t.timestamps 
    end
  end
end
