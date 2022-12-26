json.extract! personal_detail, :id, :username, :first_name, :last_name, :id_type, :id_number, :phone_number, :user_id, :created_at, :updated_at
json.url personal_detail_url(personal_detail, format: :json)
