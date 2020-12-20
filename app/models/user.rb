class User < ActiveRecord::Base
  has_many :wines
  has_secure_password

  validates :name, :email, presence: true
end
