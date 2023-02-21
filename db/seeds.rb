33.times do |index|
  Word.create!(vocabulary: Faker::Book.title,
                pronunciation: Faker::Movie.title,
                meaning: Faker::Movie.quote,
                example: Faker::Games::Overwatch.quote)
end