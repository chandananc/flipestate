class CsController < ApplicationController
  before_action :set_c, only: [:show, :edit, :update, :destroy]

  # GET /cs
  # GET /cs.json
  def index
    @cs = C.all
  end

  # GET /cs/1
  # GET /cs/1.json
  def show
  end

  # GET /cs/new
  def new
    @c = C.new
  end

  # GET /cs/1/edit
  def edit
  end

  # POST /cs
  # POST /cs.json
  def create
    @c = C.new(c_params)

    respond_to do |format|
      if @c.save
        format.html { redirect_to @c, notice: 'C was successfully created.' }
        format.json { render :show, status: :created, location: @c }
      else
        format.html { render :new }
        format.json { render json: @c.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cs/1
  # PATCH/PUT /cs/1.json
  def update
    respond_to do |format|
      if @c.update(c_params)
        format.html { redirect_to @c, notice: 'C was successfully updated.' }
        format.json { render :show, status: :ok, location: @c }
      else
        format.html { render :edit }
        format.json { render json: @c.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cs/1
  # DELETE /cs/1.json
  def destroy
    @c.destroy
    respond_to do |format|
      format.html { redirect_to cs_url, notice: 'C was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c
      @c = C.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_params
      params.require(:c).permit(:name)
    end
end
