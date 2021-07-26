class Review < ApplicationRecord
    belongs_to :song
    belongs_to :super_fan

    validates :rating, inclusion: 1..10
    validate :one_per_song

    def one_per_song
        if Review.where(song_id: self.song_id, super_fan_id: self.super_fan_id).count > 1
            errors.add(:song_id, "already exists")
        end
    end
end
