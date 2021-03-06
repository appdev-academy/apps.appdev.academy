class CreateDocumentVersions < ActiveRecord::Migration[6.0]
  def change
    create_table :document_versions do |t|
      t.bigint :app_id, null: false
      t.bigint :document_id, null: false
      t.integer :version, null: false
      t.date :revision_date, null: false
      t.boolean :published
      t.timestamps
      
      t.index [:app_id, :document_id, :version], unique: true
    end
  end
end
