class TipeNasabahsController < ApplicationController
  before_action :set_tipe_nasabah, only: [:show, :edit, :update, :destroy]

  # GET /tipe_nasabahs
  # GET /tipe_nasabahs.json
  def index
    @tipe_nasabahs = TipeNasabah.all
  end

  # GET /tipe_nasabahs/1
  # GET /tipe_nasabahs/1.json
  def show
  end

  # GET /tipe_nasabahs/new
  def new
    @tipe_nasabah = TipeNasabah.new
  end

  # GET /tipe_nasabahs/1/edit
  def edit
  end

  # POST /tipe_nasabahs
  # POST /tipe_nasabahs.json
  def create
    @tipe_nasabah = TipeNasabah.new(tipe_nasabah_params)

    respond_to do |format|
      if @tipe_nasabah.save
        format.html { redirect_to @tipe_nasabah, notice: 'Tipe nasabah was successfully created.' }
        format.json { render :show, status: :created, location: @tipe_nasabah }
      else
        format.html { render :new }
        format.json { render json: @tipe_nasabah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipe_nasabahs/1
  # PATCH/PUT /tipe_nasabahs/1.json
  def update
    respond_to do |format|
      if @tipe_nasabah.update(tipe_nasabah_params)
        format.html { redirect_to @tipe_nasabah, notice: 'Tipe nasabah was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipe_nasabah }
      else
        format.html { render :edit }
        format.json { render json: @tipe_nasabah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipe_nasabahs/1
  # DELETE /tipe_nasabahs/1.json
  def destroy
    @tipe_nasabah.destroy
    respond_to do |format|
      format.html { redirect_to tipe_nasabahs_url, notice: 'Tipe nasabah was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipe_nasabah
      @tipe_nasabah = TipeNasabah.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipe_nasabah_params
      params.require(:tipe_nasabah).permit(:ident_name, :name, :user)
    end
end
