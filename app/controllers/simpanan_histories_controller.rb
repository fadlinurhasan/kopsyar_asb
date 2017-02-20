class SimpananHistoriesController < ApplicationController
  before_action :set_simpanan_history, only: [:show, :edit, :update, :destroy]

  # GET /simpanan_histories
  # GET /simpanan_histories.json
  def index
    @simpanan_histories = SimpananHistory.all
  end

  # GET /simpanan_histories/1
  # GET /simpanan_histories/1.json
  def show
  end

  # GET /simpanan_histories/new
  def new
    @simpanan_history = SimpananHistory.new
    @simpanan_history.petugas_id = current_user.id
  end

  # GET /simpanan_histories/1/edit
  def edit
  end

  # POST /simpanan_histories
  # POST /simpanan_histories.json
  def create
    @simpanan_history = SimpananHistory.new(simpanan_history_params)
    @simpanan_history.petugas_id = current_user.id

    respond_to do |format|
      if @simpanan_history.save
        format.html { redirect_to @simpanan_history, notice: 'Simpanan history was successfully created.' }
        format.json { render :show, status: :created, location: @simpanan_history }
      else
        format.html { render :new }
        format.json { render json: @simpanan_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simpanan_histories/1
  # PATCH/PUT /simpanan_histories/1.json
  def update
    respond_to do |format|
      if @simpanan_history.update(simpanan_history_params)
        format.html { redirect_to @simpanan_history, notice: 'Simpanan history was successfully updated.' }
        format.json { render :show, status: :ok, location: @simpanan_history }
      else
        format.html { render :edit }
        format.json { render json: @simpanan_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simpanan_histories/1
  # DELETE /simpanan_histories/1.json
  def destroy
    @simpanan_history.destroy
    respond_to do |format|
      format.html { redirect_to simpanan_histories_url, notice: 'Simpanan history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simpanan_history
      @simpanan_history = SimpananHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simpanan_history_params
      params.require(:simpanan_history).permit(:nilai_simpanan, :catatan, :tipe_simpanan_id, :nasabah_id, :petugas_id)
    end
end
