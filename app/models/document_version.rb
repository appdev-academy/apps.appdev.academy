class DocumentVersion < ApplicationRecord
  # Associations
  belongs_to :app
  belongs_to :document
  
  # Associations validations
  validates :app, presence: true
  validates :document, presence: true
  
  # Field validations
  validates :revision_date, presence: true
  validates :version, presence: true, numericality: { only_integer: true, greater_than: 0 }, uniqueness: { scope: [:app_id, :document_id] }
end
