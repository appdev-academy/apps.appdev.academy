class AddContentToDocumentVersions < ActiveRecord::Migration[6.0]
  def change
    add_column :document_versions, :content, :text, null: false
  end
end
