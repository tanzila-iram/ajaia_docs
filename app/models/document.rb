class Document < ApplicationRecord
  belongs_to :owner,
             class_name: "User"

  has_rich_text :content

  has_many :document_shares,
           dependent: :destroy

  has_many :shared_users,
           through: :document_shares,
           source: :user

  validates :title, presence: true
end