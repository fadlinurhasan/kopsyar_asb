class CreateTipeNasabahs < ActiveRecord::Migration
  def change
    create_table :tipe_nasabahs do |t|
      t.string :ident_name
      t.string :name

      t.timestamps null: false
    end
  end
end
