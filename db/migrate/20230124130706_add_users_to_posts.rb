class AddUsersToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :user_id, :integer, null: false
    add_foreign_key  :posts, :users, column: :user_id
  end
end
