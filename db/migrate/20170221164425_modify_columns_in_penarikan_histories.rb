class ModifyColumnsInPenarikanHistories < ActiveRecord::Migration
  def change
  	change_column :penarikan_histories, :nilai_penarikan, :float
  end
end
