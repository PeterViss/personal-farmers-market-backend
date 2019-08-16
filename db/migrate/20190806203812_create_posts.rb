class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.datetime :startTime, null: false
      t.string :location
      t.integer :zip
      t.integer :state_id
      t.integer :attending
      t.integer :user_id
      t.integer :category_id
      t.timestamps
    end
  end
end
