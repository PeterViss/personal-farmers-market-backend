class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :content
      t.datetime :date
      t.string :location
      t.integer :zip
      t.string :state
      t.integer :attending
      t.integer :user_id
      t.timestamps
    end
  end
end
