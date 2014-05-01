class Meal < ActiveRecord::Base
  mount_uploader :picture, MealUploader
  belongs_to :cook
  belongs_to :order
  
  validates :name, :description, :price, :available_time, :cook, presence: true
  validates :price, numericality: { only_integer: true }
end
