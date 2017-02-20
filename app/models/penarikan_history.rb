class PenarikanHistory < ActiveRecord::Base
  belongs_to :tipe_penarikan
  belongs_to :nasabah, :class_name => "User"
  belongs_to :petugas, :class_name => "User"


  after_create :create_transaksi_history
  private
    def create_transaksi_history
      TransaksiHistory.create(user:self.nasabah, penarikan_history:self)
    end
end
