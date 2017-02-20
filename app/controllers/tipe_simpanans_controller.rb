class TipeSimpanansController < ApplicationController
  before_action :set_tipe_simpanan, only: [:show, :edit, :update, :destroy]

  # GET /tipe_simpanans
  # GET /tipe_simpanans.json
  def index
    @tipe_simpanans = TipeSimpanan.all
  end

  # GET /tipe_simpanans/1
  # GET /tipe_simpanans/1.json
  def show
  end

  # GET /tipe_simpanans/new
  def new
    @tipe_simpanan = TipeSimpanan.new
  end

  # GET /tipe_simpanans/1/edit
  def edit
  end

  # POST /tipe_simpanans
  # POST /tipe_simpanans.json
  def create
    @tipe_simpanan = TipeSimpanan.new(tipe_simpanan_params)

    respond_to do |format|
      if @tipe_simpanan.save
        format.html { redirect_to @tipe_simpanan, notice: 'Tipe simpanan was successfully created.' }
        format.json { render :show, status: :created, location: @tipe_simpanan }
      else
        format.html { render :new }
        format.json { render json: @tipe_simpanan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipe_simpanans/1
  # PATCH/PUT /tipe_simpanans/1.json
  def update
    respond_to do |format|
      if @tipe_simpanan.update(tipe_simpanan_params)
        format.html { redirect_to @tipe_simpanan, notice: 'Tipe simpanan was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipe_simpanan }
      else
        format.html { render :edit }
        format.json { render json: @tipe_simpanan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipe_simpanans/1
  # DELETE /tipe_simpanans/1.json
  def destroy
    @tipe_simpanan.destroy
    respond_to do |format|
      format.html { redirect_to tipe_simpanans_url, notice: 'Tipe simpanan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipe_simpanan
      @tipe_simpanan = TipeSimpanan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipe_simpanan_params
      params.require(:tipe_simpanan).permit(:ident_name, :name)
    end
end
