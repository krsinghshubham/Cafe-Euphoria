class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :menus
  validates :first_name, format: { with:  /\A[a-zA-Z0-9 ]+\z/ }
end
