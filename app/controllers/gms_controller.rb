class GmsController < ApplicationController
  before_action :set_gm, only: [:show, :edit, :update, :destroy]

  # GET /gms
  # GET /gms.json
  def index
    @gms = Gm.all
  end

  # GET /gms/1
  # GET /gms/1.json
  def show
  end

  # GET /gms/new
  def new
    @gm = Gm.new
  end

  # GET /gms/1/edit
  def edit
  end

  # POST /gms
  # POST /gms.json
  def create
    @gm = Gm.new(gm_params)

    respond_to do |format|
      if @gm.save
        format.html { redirect_to @gm, notice: 'Gm was successfully created.' }
        format.json { render :show, status: :created, location: @gm }
      else
        format.html { render :new }
        format.json { render json: @gm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gms/1
  # PATCH/PUT /gms/1.json
  def update
    respond_to do |format|
      if @gm.update(gm_params)
        format.html { redirect_to @gm, notice: 'Gm was successfully updated.' }
        format.json { render :show, status: :ok, location: @gm }
      else
        format.html { render :edit }
        format.json { render json: @gm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gms/1
  # DELETE /gms/1.json
  def destroy
    @gm.destroy
    respond_to do |format|
      format.html { redirect_to gms_url, notice: 'Gm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gm
      @gm = Gm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gm_params
      params.require(:gm).permit(:name)
    end
end
