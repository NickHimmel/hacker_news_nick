class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :body, null: false, limit: 3000
      t.integer :user_id
      t.integer :post_id
      t.integer :vote

      t.timestamps
    end
  end
end
