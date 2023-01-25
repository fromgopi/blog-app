class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :subtitle, null: false
      t.text :body, null: false
      t.string :status, default: 'draft'
      t.integer :views, default: 0
      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
