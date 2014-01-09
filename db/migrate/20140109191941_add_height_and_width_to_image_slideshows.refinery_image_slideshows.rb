# This migration comes from refinery_image_slideshows (originally 6)
class AddHeightAndWidthToImageSlideshows < ActiveRecord::Migration
  def change
    add_column :refinery_image_slideshows, :height, :string
    add_column :refinery_image_slideshows, :width, :string
  end
end