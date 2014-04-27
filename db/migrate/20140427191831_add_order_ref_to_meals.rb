class AddOrderRefToMeals < ActiveRecord::Migration
  def change
    add_reference :meals, :order, index: true
  end
end
