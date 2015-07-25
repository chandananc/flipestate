class TownAttachmentsController < ApplicationController
  before_action :set_town_attachment, only: [:show, :edit, :update, :destroy]

  # GET /town_attachments
  # GET /town_attachments.json
  def index
    @town_attachments = TownAttachment.all
  end

  # GET /town_attachments/1
  # GET /town_attachments/1.json
  def show
  end

  # GET /town_attachments/new
  def new
    @town_attachment = TownAttachment.new
  end

  # GET /town_attachments/1/edit
  def edit
  end

  # POST /town_attachments
  # POST /town_attachments.json
  def create
    @town_attachment = TownAttachment.new(town_attachment_params)

    respond_to do |format|
      if @town_attachment.save
        format.html { redirect_to @town_attachment, notice: 'Town attachment was successfully created.' }
        format.json { render :show, status: :created, location: @town_attachment }
      else
        format.html { render :new }
        format.json { render json: @town_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /town_attachments/1
  # PATCH/PUT /town_attachments/1.json
  def update
    respond_to do |format|
      if @town_attachment.update(town_attachment_params)
        format.html { redirect_to @town_attachment, notice: 'Town attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @town_attachment }
      else
        format.html { render :edit }
        format.json { render json: @town_attachment.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # DELETE /town_attachments/1
  # DELETE /town_attachments/1.json
  def destroy
    @town_attachment.destroy
    respond_to do |format|
      format.html { redirect_to town_attachments_url, notice: 'Town attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_town_attachment
      @town_attachment = TownAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def town_attachment_params
      params.require(:town_attachment).permit(:town_id, :image)
    end
end
