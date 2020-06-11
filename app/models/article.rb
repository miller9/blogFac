class Article < ApplicationRecord
  has_rich_text :content # Model has one rich text field
  belongs_to :user #campo adicional
  has_many :has_categories
end
