class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :guides,   dependent: :destroy
         has_many :comments, dependent: :destroy
         has_many :articles, dependent: :destroy

end
