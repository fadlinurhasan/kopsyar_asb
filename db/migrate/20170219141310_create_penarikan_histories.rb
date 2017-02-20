class CreatePenarikanHistories < ActiveRecord::Migration
  def change
    create_table :penarikan_histories do |t|
      t.string :nilai_penarikan
      t.string :catatan
      t.belongs_to :tipe_penarikan, index: true, foreign_key: true
      t.references :nasabah, index: true, foreign_key: true
      t.references :petugas, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
