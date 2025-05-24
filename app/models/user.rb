class User < ApplicationRecord
  validates :email_address, presence: true
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_rich_text :description

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
