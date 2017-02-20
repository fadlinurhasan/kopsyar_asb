class CreateTipeSimpanans < ActiveRecord::Migration
  def change
    create_table :tipe_simpanans do |t|
      t.string :ident_name
      t.string :name

      t.timestamps null: false
    end
  end
end
