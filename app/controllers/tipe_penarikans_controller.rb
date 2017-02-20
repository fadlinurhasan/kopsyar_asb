class TipePenarikansController < ApplicationController
  before_action :set_tipe_penarikan, only: [:show, :edit, :update, :destroy]

  # GET /tipe_penarikans
  # GET /tipe_penarikans.json
  def index
    @tipe_penarikans = TipePenarikan.all
  end

  # GET /tipe_penarikans/1
  # GET /tipe_penarikans/1.json
  def show
  end

  # GET /tipe_penarikans/new
  def new
    @tipe_penarikan = TipePenarikan.new
  end

  # GET /tipe_penarikans/1/edit
  def edit
  end

  # POST /tipe_penarikans
  # POST /tipe_penarikans.json
  def create
    @tipe_penarikan = TipePenarikan.new(tipe_penarikan_params)

    respond_to do |format|
      if @tipe_penarikan.save
        format.html { redirect_to @tipe_penarikan, notice: 'Tipe penarikan was successfully created.' }
        format.json { render :show, status: :created, location: @tipe_penarikan }
      else
        format.html { render :new }
        format.json { render json: @tipe_penarikan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipe_penarikans/1
  # PATCH/PUT /tipe_penarikans/1.json
  def update
    respond_to do |format|
      if @tipe_penarikan.update(tipe_penarikan_params)
        format.html { redirect_to @tipe_penarikan, notice: 'Tipe penarikan was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipe_penarikan }
      else
        format.html { render :edit }
        format.json { render json: @tipe_penarikan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipe_penarikans/1
  # DELETE /tipe_penarikans/1.json
  def destroy
    @tipe_penarikan.destroy
    respond_to do |format|
      format.html { redirect_to tipe_penarikans_url, notice: 'Tipe penarikan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipe_penarikan
      @tipe_penarikan = TipePenarikan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipe_penarikan_params
      params.require(:tipe_penarikan).permit(:ident_name, :name, :penarikan_history)
    end
end
