class CreateBiographies < ActiveRecord::Migration[5.2]
  def change
    create_table :biographies do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.timestamps
    end
  end
end
