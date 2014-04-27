class Order < ActiveRecord::Base
  STATUS_TYPE = %w(new delivered)

  has_many :meals

  validates :status, :address, presence: true
  validates :status, inclusion: { in: STATUS_TYPE ,
    message: "%{value} is not a valid status" }
end
