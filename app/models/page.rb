class Page < ApplicationRecord
  extend FriendlyId
  has_rich_text :content
  friendly_id :title, use: :slugged, slug_column: :permalink
end
