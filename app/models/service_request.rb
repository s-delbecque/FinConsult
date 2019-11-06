class ServiceRequest < ApplicationRecord
  belongs_to :user
  belongs_to :service

  # scope :renewal, ->  { where category:  }
end
