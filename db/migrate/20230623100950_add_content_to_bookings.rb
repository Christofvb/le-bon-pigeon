class AddContentToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :content, :text
  end
end
