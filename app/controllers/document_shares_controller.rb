class DocumentSharesController < ApplicationController
  before_action :set_document

  def create
    @document_share = @document.document_shares.new(document_share_params)

    if @document_share.save
      redirect_to @document, notice: "Document shared successfully."
    else
      redirect_to @document, alert: @document_share.errors.full_messages.to_sentence
    end
  end

  def destroy
    @document_share = @document.document_shares.find(params[:id])
    @document_share.destroy

    redirect_to @document, notice: "Access removed successfully."
  end

  private

  def set_document
    @document = current_user.owned_documents.find(params[:document_id])
  end

  def document_share_params
    params.require(:document_share).permit(:user_id)
  end
end