class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :title
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
