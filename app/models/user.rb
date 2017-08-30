class User < ApplicationRecord
  has_many :role_users, dependent: :destroy
  has_many :roles, through: :role_users
end
