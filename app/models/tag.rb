class Tag < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged, slug_column: :permalink
  
  has_many :article_tags, dependent: :destroy
  has_many :articles, through: :article_tags
end
