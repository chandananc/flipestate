class ListAttachmentsController < ApplicationController
  before_action :set_list_attachment, only: [:show, :edit, :update, :destroy]

  # GET /list_attachments
  # GET /list_attachments.json
  def index
    @list_attachments = ListAttachment.all
  end


  # GET /list_attachments/1
  # GET /list_attachments/1.json
  def show
  end

  # GET /list_attachments/new
  def new
    @list_attachment = ListAttachment.new
  end

  # GET /list_attachments/1/edit
  def edit
  end

  # POST /list_attachments
  # POST /list_attachments.json
  def create
    @list_attachment = ListAttachment.new(list_attachment_params)

    respond_to do |format|
      if @list_attachment.save
        format.html { redirect_to @list_attachment, notice: 'List attachment was successfully created.' }
        format.json { render :show, status: :created, location: @list_attachment }
      else
        format.html { render :new }
        format.json { render json: @list_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_attachments/1
  # PATCH/PUT /list_attachments/1.json
  def update
    respond_to do |format|
      if @list_attachment.update(list_attachment_params)
        format.html { redirect_to @list_attachment, notice: 'List attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_attachment }
      else
        format.html { render :edit }
        format.json { render json: @list_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_attachments/1
  # DELETE /list_attachments/1.json
  def destroy
    @list_attachment.destroy
    respond_to do |format|
      format.html { redirect_to list_attachments_url, notice: 'List attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_attachment
      @list_attachment = ListAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_attachment_params
      params.require(:list_attachment).permit(:list_id, :image)
    end
end
