class Meal < ActiveRecord::Base
  belongs_to :cook
  
  validates :name, :description, :price, :available_time, :cook, presence: true
  validates :price, numericality: { only_integer: true }
end
