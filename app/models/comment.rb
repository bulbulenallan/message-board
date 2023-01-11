class Comment < ApplicationRecord
  belongs_to :message
  belongs_to :user
  #search 
  include PgSearch::Model
  pg_search_scope :search, against: [:title, :description],
                       using: {tsearch: {prefix: true}}


end
