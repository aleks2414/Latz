json.extract! test, :id, :quiz_id, :name, :email, :city, :zip_code, :created_at, :updated_at
json.url test_url(test, format: :json)
