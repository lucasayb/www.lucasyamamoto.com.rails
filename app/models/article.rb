class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged, slug_column: :permalink
  
  has_many :article_categories, dependent: :destroy
  has_many :article_tags, dependent: :destroy

  has_many :categories, through: :article_categories
  has_many :tags, through: :article_tags
end
