class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|

      #  t.integer :user_id
      # t.integer :photo_id
      # references, it knows now to generate the id as an integer automatically

      t.references :user
      t.references :photo

      t.timestamps null: false
    end
  end
end
