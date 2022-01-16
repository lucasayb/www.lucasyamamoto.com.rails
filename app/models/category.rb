class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged, slug_column: :permalink

  has_many :article_categories, dependent: :destroy
  has_many :articles, through: :article_categories
end
