class RemoveContentFromPigeons < ActiveRecord::Migration[7.0]
  def change
    remove_column :pigeons, :content, :text
  end
end
