class Service < ApplicationRecord
  belongs_to :user
  has_many :service_requests
  validates :name, :description, :rate_per_day, :category, :address, presence: true
end

