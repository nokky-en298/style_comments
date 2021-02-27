class Style < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, presence: true
  validates :quality, presence: true
  validates :item, presence: true
  validates :remark, presence: true
  validates :image, presence: true
end
