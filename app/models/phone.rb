class Phone < ApplicationRecord
  validates :name, presence: true
  validates :color, presence: true
  validates :gigs, presence: true
  validates :year_released, presence: true
end
