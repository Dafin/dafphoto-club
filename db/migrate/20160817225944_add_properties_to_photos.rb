class AddPropertiesToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :image, :string
    add_column :photos, :location_name, :string
    add_reference :photos, :user, index: true, foreign_key: true
    add_column :photos, :nsfw_flag, :boolean
    add_column :photos, :location_lat, :decimal
    add_column :photos, :location_lng, :decimal
    add_column :photos, :title, :string
  end
end
