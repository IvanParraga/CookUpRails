class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.datetime :available_time

      t.timestamps
    end
  end
end
