json.extract! question, :id, :user_id, :quiz_id, :title, :explanation, :reading, :link, :correct_option, :created_at, :updated_at
json.url question_url(question, format: :json)
