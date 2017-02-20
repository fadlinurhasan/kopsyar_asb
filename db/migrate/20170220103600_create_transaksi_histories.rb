class CreateTransaksiHistories < ActiveRecord::Migration
  def change
    create_table :transaksi_histories do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :simpanan_history, index: true, foreign_key: true
      t.belongs_to :penarikan_history, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
