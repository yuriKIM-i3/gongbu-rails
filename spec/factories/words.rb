FactoryBot.define do
  factory :word1 do
    vocabulary { Faker::Beer.name }
    pronunciation { Faker::Beer.style }
    meaning { Faker::Beer.yeast }
    example { Faker::Beer.blg }
    views {22}
  end

  factory :word2 do
    vocabulary { Faker::Beer.name }
    pronunciation { Faker::Beer.style }
    meaning { Faker::Beer.yeast }
    example { Faker::Beer.blg }
    views {36}
  end

  factory :word3 do
    vocabulary { Faker::Beer.name }
    pronunciation { Faker::Beer.style }
    meaning { Faker::Beer.yeast }
    example { Faker::Beer.blg }
    views {52}
  end

  factory :word4 do
    vocabulary { Faker::Beer.name }
    pronunciation { Faker::Beer.style }
    meaning { Faker::Beer.yeast }
    example { Faker::Beer.blg }
    views {5}
  end

  factory :word5 do
    vocabulary { Faker::Beer.name }
    pronunciation { Faker::Beer.style }
    meaning { Faker::Beer.yeast }
    example { Faker::Beer.blg }
    views {909}
  end

  factory :word6 do
    vocabulary { Faker::Beer.name }
    pronunciation { Faker::Beer.style }
    meaning { Faker::Beer.yeast }
    example { Faker::Beer.blg }
    views {362}
  end

  factory :word7 do
    vocabulary { Faker::Beer.name }
    pronunciation { Faker::Beer.style }
    meaning { Faker::Beer.yeast }
    example { Faker::Beer.blg }
    views {136}
  end
end
