class CreateSnacks < ActiveRecord::Migration
  def change
    create_table :snacks do |t|
      t.string :name
      t.string :vendor
      t.integer :price

      t.timestamps null: false
    end
  end
end
