class Article < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :comments, dependent: :destroy
  scope :random, -> {order('random()')}

  validates :title, presence: true
  validates :body, presence: true
  #validates :pictures, presence: true

  mount_uploaders :pictures, PictureUploader
  serialize :pictures, JSON
end
