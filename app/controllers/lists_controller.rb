class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_filter :check_user, only: [:edit, :update, :destroy]
 

  # GET /lists
  # GET /lists.json
  def index
    @lists = List.all
  end
  
  def network
   @users = User.all
   
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    @list_attachments = @list.list_attachments.all
    @users = User.all
  end

  # GET /lists/new
  def new
    @list = List.new
     @list_attachment = @list.list_attachments.build

  end
  
   def search
    @lists = List.search(params)
    if @lists.blank?
      flash[:notice] = "nothing found"
    end
   end

  # GET /lists/1/edit
  def edit
  end

  # POST /lists
  # POST /lists.json
  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id

    respond_to do |format|
      if @list.save
        params[:list_attachments]['image'].each do |a|
          @listing_attachment = @list.list_attachments.create!(:image => a, :list_id => @list.id)
        end
        format.html { redirect_to @list, notice: 'List was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_url, notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
      params.require(:list).permit(:name, :sqft, :rooms, :built_year, :cost, :address, :image, :category_id, list_attachments_attributes: [:id, :list_id, :image])
    end
    
    def check_user
      if current_user != @list_user
        redirect_to root_path, alert: "sorry this house belongs to someone"
      end
    end
    
    def super_user
     if current_user.super_user
       @lists = List.all
     else
        @lists = current_user.list
     end
    end
end
