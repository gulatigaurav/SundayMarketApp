class AddImagesToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :main_image, :text, default: "http://via.placeholder.com/600x400"
    add_column :products, :thumb_image, :text, default: "http://via.placeholder.com/200x100"
  end
end
