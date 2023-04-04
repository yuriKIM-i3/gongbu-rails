FactoryBot.define do
  factory :user1 do
    name { Faker::Name.name }
    password { "yuri" }
    role { "admin" }
  end

  factory :user2 do
    name { Faker::Name.name }
    password { "yuri" }
    role { "user" }
  end

  factory :user3 do
    name { Faker::Name.name }
    password { "yuri" }
    role { "user" }
  end

  factory :user4 do
    name { Faker::Name.name }
    password { "yuri" }
    role { "user" }
  end
end
