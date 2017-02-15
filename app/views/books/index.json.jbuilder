json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :blurb, :release_date, :rating, :best_seller
  json.url book_url(book, format: :json)
end
