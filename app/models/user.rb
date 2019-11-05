class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :services
  has_many :service_requests, through: :services
  has_many :sent_requests, foreign_key: "user_id", class_name: "ServiceRequest"
end
