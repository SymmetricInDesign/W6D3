class Artwork < ApplicationRecord
    validates :title, uniqueness: { scope: :artist_id, message: "one artist cannot have two artworks with the same name"}

    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User

    has_many :artwork_shares,
        foreign_key: :artwork,
        class_name: :ArtworkShare

    has_many :shared_viewers,
        through: :artwork_shares,
        source: :viewer
end