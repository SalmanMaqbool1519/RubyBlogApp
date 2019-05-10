class Article < ApplicationRecord
  
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
