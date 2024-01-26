class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :groups
  validates :email, presence: true
  validates :encrypted_password, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
end
