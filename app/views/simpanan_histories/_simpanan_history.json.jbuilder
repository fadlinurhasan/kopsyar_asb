json.extract! simpanan_history, :id, :nilai_simpanan, :catatan, :tipe_simpanan_id, :nasabah_id, :petugas_id, :created_at, :updated_at
json.url simpanan_history_url(simpanan_history, format: :json)