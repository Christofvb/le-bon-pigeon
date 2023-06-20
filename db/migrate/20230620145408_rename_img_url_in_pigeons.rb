class RenameImgUrlInPigeons < ActiveRecord::Migration[7.0]
  def change
    rename_column :pigeons, :img_url, :image_url
  end
end
