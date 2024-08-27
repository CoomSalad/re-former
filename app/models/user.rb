class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 1..20 }
  validates :email, presence: true, format: { with: /\A[\w._%+-]+@[\w.-]+\.[a-zA-Z]{2,4}\z/,
  message: "only allows email address" }
  validates :password, presence: true, length: { minimum: 8 },
  format: { with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*[\W_]).+\z/,
  message: "password must contain at least one uppercase letter, lowercase letter and symbol" }
end
