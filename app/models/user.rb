class User < ApplicationRecord
  has_many :words, dependent: :destroy
end
