class ModifyColumnsInSimpananHistories < ActiveRecord::Migration
  def change
  	change_column :simpanan_histories, :nilai_simpanan, :float
  end
end
