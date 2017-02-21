class PenarikanHistory < ActiveRecord::Base
  belongs_to :tipe_penarikan
  belongs_to :nasabah, :class_name => "User"
  belongs_to :petugas, :class_name => "User"


  after_create :create_transaksi_history
  before_create :check_saldo

  private
    def create_transaksi_history
      TransaksiHistory.create(user:self.nasabah, penarikan_history:self)
    end


  def check_saldo
    total_simpanan = SimpananHistory.where(nasabah: self.nasabah).sum(:nilai_simpanan)
    total_penarikan = PenarikanHistory.where(nasabah: self.nasabah).sum(:nilai_penarikan)
    current_saldo = total_simpanan - total_penarikan

    if self.nilai_penarikan <= 50000
      raise "Minimal Penarikan adalah Rp. 50.000"
    elsif (current_saldo - 50000) < (self.nilai_penarikan)
      raise "Your saldo not enough to do this transaction"
    end

  end

end
