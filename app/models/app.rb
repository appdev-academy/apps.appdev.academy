class App < ApplicationRecord
  # Associations
  has_many :document_versions, dependent: :destroy
  
  # Fields validations
  validates :title, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true
end
