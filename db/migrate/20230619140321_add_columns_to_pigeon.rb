class AddColumnsToPigeon < ActiveRecord::Migration[7.0]
  def change
    add_column :pigeons, :img_url, :string
  end
end
