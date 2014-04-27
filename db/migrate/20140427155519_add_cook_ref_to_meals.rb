class AddCookRefToMeals < ActiveRecord::Migration
  def change
    add_reference :meals, :cook, index: true
  end
end
