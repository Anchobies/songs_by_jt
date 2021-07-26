class SuperFan < ApplicationRecord
    belongs_to :song
    has_many :reviews, dependent: :destroy
    has_many :review_songs, through: :reviews, source: :songs
end
