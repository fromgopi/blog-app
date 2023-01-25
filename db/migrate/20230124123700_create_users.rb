class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.integer :isVerified, default: 0
      t.integer :active, default: 0
      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
