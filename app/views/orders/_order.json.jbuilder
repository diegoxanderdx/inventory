json.extract! order, :id, :first_name, :last_name, :id_type, :id_number, :product_name, :quantity, :group_id, :material, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)
