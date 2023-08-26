class Review < ApplicationRecord
  belongs_to :list

  validates :comment, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: 1..5 }
end
