json.extract! admin, :id, :name, :email, :contact, :status, :created_at, :updated_at
json.url admin_url(admin, format: :json)
