class User < ApplicationRecord
  has_many :owned_documents,
           class_name: "Document",
           foreign_key: :owner_id,
           dependent: :destroy

  has_many :document_shares, dependent: :destroy
  has_many :shared_documents,
           through: :document_shares,
           source: :document

  validates :name, :email, presence: true
end
