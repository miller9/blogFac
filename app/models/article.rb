class Article < ApplicationRecord
  has_rich_text :content # Model has one rich text field
end
