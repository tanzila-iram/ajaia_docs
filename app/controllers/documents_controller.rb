class DocumentsController < ApplicationController
  before_action :set_document, only: %i[show edit update]
  before_action :set_owned_document, only: :destroy

  def index
    @documents = accessible_documents.order(updated_at: :desc)
  end

  def show
		@available_users = User
			.where.not(id: @document.owner_id)
			.where.not(id: @document.shared_user_ids)
			.order(:name)
	end

  def new
    @document = Document.new
  end

  def create
    @document = current_user.owned_documents.new(document_params)
    @document.owner = current_user
		

    if @document.save
      redirect_to @document, notice: "Document was created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @document.update(document_params)
      redirect_to @document, notice: "Document was updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @document.destroy

    redirect_to documents_path, notice: "Document was deleted successfully."
  end

  private

  def set_document
		@document = accessible_documents.find(params[:id])
	end

	def set_owned_document
		@document = current_user.owned_documents.find(params[:id])
	end

  def accessible_documents
    Document
        .where(owner: current_user)
        .or(Document.where(id: current_user.shared_document_ids))
  end

  def document_params
    params.require(:document).permit(:title, :content)
  end
end