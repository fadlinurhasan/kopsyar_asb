class PenarikanHistory < ActiveRecord::Base
  belongs_to :tipe_penarikan
  belongs_to :nasabah
  belongs_to :petugas
end
