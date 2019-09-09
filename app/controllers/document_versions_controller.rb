class DocumentVersionsController < ApplicationController
  
  # GET /:app_slug/:document_slug
  def show
    app = App.find_by(slug: params[:app_slug])
    document = Document.find_by(slug: params[:document_slug])
    @document_version = DocumentVersion.where(app: app, document: document, published: true).order(version: :desc).first
  end
end
