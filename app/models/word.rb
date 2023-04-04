class Word < ApplicationRecord
  validates :vocabulary, presence: true, length: { maximum: 50 }
  validates :pronunciation, presence: true, length: { maximum: 100 }
  validates :meaning, presence: true, length: { maximum: 300 }

  belongs_to :user
end
