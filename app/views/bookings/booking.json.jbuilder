json.extract! booking, :id, :user_id, :pigeon_id, :date_start, :date_end, :created_at, :updated_at
json.url booking_url(booking, format: :json)