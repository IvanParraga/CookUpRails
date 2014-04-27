class Cook < ActiveRecord::Base
  has_many :meals
  validates_associated :meals
  
  validates :name, presence: true
end
