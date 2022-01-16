class Page < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged, slug_column: :permalink
end
