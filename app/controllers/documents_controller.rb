class DocumentsController < ApplicationController
  before_action :set_document, only: %i[show edit update destroy]

  def index
    @documents = current_user
               .owned_documents
               .order(updated_at: :desc)
  end

  def show
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
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
    @document = current_user.owned_documents.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:title, :content)
  end
end