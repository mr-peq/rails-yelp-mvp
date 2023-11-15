class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, comparison: { less_than_or_equal_to: 5, greater_than_or_equal_to: 0 }, numericality: { only_integer: true }
  validates :content, presence: true
end
