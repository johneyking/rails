class CreateJohndata < ActiveRecord::Migration
  def change
    create_table :johndata do |t|
      t.string :what
      t.string :is
      t.string :your
      t.string :name
      t.text :bio
      t.date :birthday

      t.timestamps null: false
    end
  end
end
