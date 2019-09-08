class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :title, null: false
      t.string :slug, null: false
      t.timestamps
      
      t.index :title, unique: true
      t.index :slug, unique: true
    end
  end
end
