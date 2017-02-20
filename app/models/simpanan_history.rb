class SimpananHistory < ActiveRecord::Base
  belongs_to :tipe_simpanan
  belongs_to :nasabah, :class_name => "User"
  belongs_to :petugas, :class_name => "User"
end
