class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false, limit: 100
      t.string :url, null: false
      t.integer :user_id
      t.integer :vote

      t.timestamps(null: false)
    end
  end
end
