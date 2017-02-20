class TransaksiHistoriesController < ApplicationController
  before_action :set_transaksi_history, only: [:show, :edit, :update, :destroy]

  # GET /transaksi_histories
  # GET /transaksi_histories.json
  def index
    @transaksi_histories = TransaksiHistory.all
  end

  # GET /transaksi_histories/1
  # GET /transaksi_histories/1.json
  def show
  end

  # GET /transaksi_histories/new
  def new
    @transaksi_history = TransaksiHistory.new
  end

  # GET /transaksi_histories/1/edit
  def edit
  end

  # POST /transaksi_histories
  # POST /transaksi_histories.json
  def create
    @transaksi_history = TransaksiHistory.new(transaksi_history_params)

    respond_to do |format|
      if @transaksi_history.save
        format.html { redirect_to @transaksi_history, notice: 'Transaksi history was successfully created.' }
        format.json { render :show, status: :created, location: @transaksi_history }
      else
        format.html { render :new }
        format.json { render json: @transaksi_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transaksi_histories/1
  # PATCH/PUT /transaksi_histories/1.json
  def update
    respond_to do |format|
      if @transaksi_history.update(transaksi_history_params)
        format.html { redirect_to @transaksi_history, notice: 'Transaksi history was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaksi_history }
      else
        format.html { render :edit }
        format.json { render json: @transaksi_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transaksi_histories/1
  # DELETE /transaksi_histories/1.json
  def destroy
    @transaksi_history.destroy
    respond_to do |format|
      format.html { redirect_to transaksi_histories_url, notice: 'Transaksi history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaksi_history
      @transaksi_history = TransaksiHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaksi_history_params
      params.require(:transaksi_history).permit(:user_id, :simpanan_history_id, :penarikan_history_id)
    end
end
