# This migration comes from refinery_image_slideshows (originally 5)
class AddLinkUrlToImageSlides < ActiveRecord::Migration
  def change
    add_column :refinery_image_slides, :link_url, :string
  end
end