class TipeSimpanan < ActiveRecord::Base
  has_many :simpanan_history
end
