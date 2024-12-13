class Category < ApplicationRecord
  has_many :menu_items, dependent: :destroy
  
  validates :name, presence: true, uniqueness: true
  
  scope :active, -> { where(active: true) }
end
