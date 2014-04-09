class CreateTables < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :link
      t.integer :total_score
      t.integer :user_id
      t.datetime :time
      t.timestamps
    end
    create_table :comments do |t|
      t.text :content
      t.integer :commentable_id
      t.string :commentable_type
      t.timestamps
    end
  end
end
