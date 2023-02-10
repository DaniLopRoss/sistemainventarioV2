class AddRoomIdToDepartaments < ActiveRecord::Migration[7.0]
  def change
    add_reference :departaments, :room, null: false, foreign_key: true
  end
endw
