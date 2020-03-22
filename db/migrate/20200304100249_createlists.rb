class Createlists < ActiveRecord::Migration[4.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :user_id
    end
  end
end
