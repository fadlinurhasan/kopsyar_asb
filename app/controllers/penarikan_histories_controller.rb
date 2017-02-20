class PenarikanHistoriesController < ApplicationController
  before_action :set_penarikan_history, only: [:show, :edit, :update, :destroy]

  # GET /penarikan_histories
  # GET /penarikan_histories.json
  def index
    @penarikan_histories = PenarikanHistory.all
  end

  # GET /penarikan_histories/1
  # GET /penarikan_histories/1.json
  def show
  end

  # GET /penarikan_histories/new
  def new
    @penarikan_history = PenarikanHistory.new
    @penarikan_history.petugas_id = current_user.id
  end

  # GET /penarikan_histories/1/edit
  def edit
  end

  # POST /penarikan_histories
  # POST /penarikan_histories.json
  def create
    @penarikan_history = PenarikanHistory.new(penarikan_history_params)
    @penarikan_history.petugas_id = current_user.id

    respond_to do |format|
      if @penarikan_history.save
        format.html { redirect_to @penarikan_history, notice: 'Penarikan history was successfully created.' }
        format.json { render :show, status: :created, location: @penarikan_history }
      else
        format.html { render :new }
        format.json { render json: @penarikan_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /penarikan_histories/1
  # PATCH/PUT /penarikan_histories/1.json
  def update
    respond_to do |format|
      if @penarikan_history.update(penarikan_history_params)
        format.html { redirect_to @penarikan_history, notice: 'Penarikan history was successfully updated.' }
        format.json { render :show, status: :ok, location: @penarikan_history }
      else
        format.html { render :edit }
        format.json { render json: @penarikan_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /penarikan_histories/1
  # DELETE /penarikan_histories/1.json
  def destroy
    @penarikan_history.destroy
    respond_to do |format|
      format.html { redirect_to penarikan_histories_url, notice: 'Penarikan history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_penarikan_history
      @penarikan_history = PenarikanHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def penarikan_history_params
      params.require(:penarikan_history).permit(:nilai_penarikan, :catatan, :tipe_penarikan_id, :nasabah_id, :petugas_id)
    end
end
