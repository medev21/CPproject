class PiersController < ApplicationController
  before_action :set_pier, only: [:show, :edit, :update, :destroy]

  # GET /piers
  # GET /piers.json
  def index
    @piers = Pier.all
  end

  # GET /piers/1
  # GET /piers/1.json
  def show
  end

  # GET /piers/new
  def new
    @pier = Pier.new
  end

  # GET /piers/1/edit
  def edit
  end

  # POST /piers
  # POST /piers.json
  def create
    @pier = Pier.new(pier_params)

    respond_to do |format|
      if @pier.save
        format.html { redirect_to @pier, notice: 'Pier was successfully created.' }
        format.json { render :show, status: :created, location: @pier }
      else
        format.html { render :new }
        format.json { render json: @pier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piers/1
  # PATCH/PUT /piers/1.json
  def update
    respond_to do |format|
      if @pier.update(pier_params)
        format.html { redirect_to @pier, notice: 'Pier was successfully updated.' }
        format.json { render :show, status: :ok, location: @pier }
      else
        format.html { render :edit }
        format.json { render json: @pier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piers/1
  # DELETE /piers/1.json
  def destroy
    @pier.destroy
    respond_to do |format|
      format.html { redirect_to piers_url, notice: 'Pier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pier
      @pier = Pier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pier_params
      params.require(:pier).permit(:fullname, :year, :course, :professor, :rate)
    end
end
