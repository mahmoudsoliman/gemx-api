class LbsController < ApplicationController
  before_action :set_lb, only: [:show, :edit, :update, :destroy]

  # GET /lbs
  # GET /lbs.json
  def index
    @lbs = Lb.all
  end

  # GET /lbs/1
  # GET /lbs/1.json
  def show
  end

  def getlbsforgm
    @gm = Gm.where(name: params[:gem_name]).first
    @lbs = @gm.lbs
    render json: @lbs, status: 200
  end

  # GET /lbs/new
  def new
    @lb = Lb.new
  end

  # GET /lbs/1/edit
  def edit
  end

  # POST /lbs
  # POST /lbs.json
  def create
    @lb = Lb.new(lb_params)
    @gm = Gm.first
    @gm.lbs << @lb
    respond_to do |format|
      if @lb.save
        format.html { redirect_to @lb, notice: 'Lb was successfully created.' }
        format.json { render :show, status: :created, location: @lb }
      else
        format.html { render :new }
        format.json { render json: @lb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lbs/1
  # PATCH/PUT /lbs/1.json
  def update
    respond_to do |format|
      if @lb.update(lb_params)
        format.html { redirect_to @lb, notice: 'Lb was successfully updated.' }
        format.json { render :show, status: :ok, location: @lb }
      else
        format.html { render :edit }
        format.json { render json: @lb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lbs/1
  # DELETE /lbs/1.json
  def destroy
    @lb.destroy
    respond_to do |format|
      format.html { redirect_to lbs_url, notice: 'Lb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lb
      @lb = Lb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lb_params
      params.require(:lb).permit(:name, :url)
    end
end
