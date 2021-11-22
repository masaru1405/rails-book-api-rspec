class Book < ApplicationRecord
  belongs_to :category, optional: true

  validates :title, presence: true
  validates :author, presence: true
  validates :category_id, presence: true
end
