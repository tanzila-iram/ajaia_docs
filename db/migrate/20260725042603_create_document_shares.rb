class CreateDocumentShares < ActiveRecord::Migration[8.1]
  def change
    create_table :document_shares do |t|
      t.references :document, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
