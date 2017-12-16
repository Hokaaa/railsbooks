json.extract! book, :id, :product_id, :title, :author, :subject, :level, :ISBN, :category, :created_at, :updated_at
json.url book_url(book, format: :json)
