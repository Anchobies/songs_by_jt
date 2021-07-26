class Song < ApplicationRecord
    has_many :reviews
    has_many :super_fans
    has_many :review_fans, through: :reviews, source: :super_fans
end
