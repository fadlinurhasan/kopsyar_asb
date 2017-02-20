class TipeAnggotaController < ApplicationController
  before_action :set_tipe_anggotum, only: [:show, :edit, :update, :destroy]

  # GET /tipe_anggota
  # GET /tipe_anggota.json
  def index
    @tipe_anggota = TipeAnggotum.all
  end

  # GET /tipe_anggota/1
  # GET /tipe_anggota/1.json
  def show
  end

  # GET /tipe_anggota/new
  def new
    @tipe_anggotum = TipeAnggotum.new
  end

  # GET /tipe_anggota/1/edit
  def edit
  end

  # POST /tipe_anggota
  # POST /tipe_anggota.json
  def create
    @tipe_anggotum = TipeAnggotum.new(tipe_anggotum_params)

    respond_to do |format|
      if @tipe_anggotum.save
        format.html { redirect_to @tipe_anggotum, notice: 'Tipe anggotum was successfully created.' }
        format.json { render :show, status: :created, location: @tipe_anggotum }
      else
        format.html { render :new }
        format.json { render json: @tipe_anggotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipe_anggota/1
  # PATCH/PUT /tipe_anggota/1.json
  def update
    respond_to do |format|
      if @tipe_anggotum.update(tipe_anggotum_params)
        format.html { redirect_to @tipe_anggotum, notice: 'Tipe anggotum was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipe_anggotum }
      else
        format.html { render :edit }
        format.json { render json: @tipe_anggotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipe_anggota/1
  # DELETE /tipe_anggota/1.json
  def destroy
    @tipe_anggotum.destroy
    respond_to do |format|
      format.html { redirect_to tipe_anggota_url, notice: 'Tipe anggotum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipe_anggotum
      @tipe_anggotum = TipeAnggotum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipe_anggotum_params
      params.require(:tipe_anggotum).permit(:ident_name, :name, :user)
    end
end
