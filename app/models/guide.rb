class Guide < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :comments

  mount_uploaders :pictures, PictureUploader
  serialize :pictures, JSON

end
