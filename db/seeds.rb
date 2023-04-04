ADMIN = "管理者"
USER = "ユーザー"

User.create!(name: Faker::JapaneseMedia::Naruto.character,
            password: "aaa",
            role: ADMIN)

User.create!(name: Faker::JapaneseMedia::Naruto.character,
            password: "aaa",
            role: USER)

User.create!(name: Faker::JapaneseMedia::Naruto.character,
            password: "aaa",
            role: USER)

11.times do |index|
  Word.create!(vocabulary: Faker::Book.title,
                pronunciation: Faker::Movie.title,
                meaning: Faker::Movie.quote,
                example: Faker::Games::Overwatch.quote,
                views: index,
                user_id: 2)
end

11.times do |index|
  Word.create!(vocabulary: Faker::Book.title,
                pronunciation: Faker::Movie.title,
                meaning: Faker::Movie.quote,
                example: Faker::Games::Overwatch.quote,
                views: index,
                user_id: 3)
end

11.times do |index|
  Word.create!(vocabulary: Faker::Book.title,
                pronunciation: Faker::Movie.title,
                meaning: Faker::Movie.quote,
                example: Faker::Games::Overwatch.quote,
                views: index,
                user_id: 1)
end