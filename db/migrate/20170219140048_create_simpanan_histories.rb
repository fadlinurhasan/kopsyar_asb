class CreateSimpananHistories < ActiveRecord::Migration
  def change
    create_table :simpanan_histories do |t|
      t.string :nilai_simpanan
      t.string :catatan
      t.belongs_to :tipe_simpanan, index: true, foreign_key: true
      t.references :nasabah, index: true, foreign_key: true
      t.references :petugas, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
