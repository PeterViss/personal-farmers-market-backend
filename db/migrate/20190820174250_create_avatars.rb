class CreateAvatars < ActiveRecord::Migration[5.2]
  def change
    create_table :avatars do |t|
      t.string :avatar_style
      t.string :top
      t.string :accessories 
      t.string :hair_color
      t.string :hat_color
      t.string :facial_hair   
      t.string :facial_hair_color
      t.string :clothes
      t.string :color_fabric
      t.string :graphic
      t.string :eyes
      t.string :eyebrow
      t.string :mouth
      t.string :skin
      t.integer :user_id
      t.timestamps
    end
  end
end
