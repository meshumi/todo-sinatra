class Createtasks < ActiveRecord::Migration[4.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :list_id
      t.integer :user_id
    end
  end
end
