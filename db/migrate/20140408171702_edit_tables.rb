class EditTables < ActiveRecord::Migration
  def change
    add_column :comments, :post_id, :integer
    remove_column :posts, :user_id
  end
end
