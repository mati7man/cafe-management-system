class MenuItem < ApplicationRecord
  belongs_to :category
  
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true
  
  scope :available, -> { where(available: true) }
  scope :by_category, ->(category_id) { where(category_id: category_id) }
end
