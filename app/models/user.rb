class User < ApplicationRecord
  has_secure_password
  validates :first_name, format: { with:  /\A[a-zA-Z0-9 ]+\z/ }
end
