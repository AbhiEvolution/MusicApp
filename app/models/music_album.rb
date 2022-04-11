class MusicAlbum < ApplicationRecord
 has_one_attached :cover_image
 has_one_attached :file
end
