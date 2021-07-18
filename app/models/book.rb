class Book < ApplicationRecord

  belongs_to :user

  validates :name, presence: true
  validates :title, presence: true

end
