class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :guides
         has_many :comments
         has_many :articles

end
