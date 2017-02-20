class TransaksiHistory < ActiveRecord::Base
  belongs_to :user
  belongs_to :simpanan_history
  belongs_to :penarikan_history
end
