class AddUniqueIndexToDocumentShares < ActiveRecord::Migration[8.1]
  def change
    add_index :document_shares,
              [:document_id, :user_id],
              unique: true,
              name: "index_document_shares_on_document_id_and_user_id"
  end
end