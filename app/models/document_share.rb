class DocumentShare < ApplicationRecord
  belongs_to :document
  belongs_to :user

  validates :user_id, uniqueness: {
    scope: :document_id,
    message: "already has access to this document"
  }

  validate :user_cannot_be_document_owner

  private

  def user_cannot_be_document_owner
    return unless document && user_id == document.owner_id

    errors.add(:user, "is already the document owner")
  end
end