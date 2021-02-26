class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :styles

  with_options presence: true do
  validates :name
  end
end
