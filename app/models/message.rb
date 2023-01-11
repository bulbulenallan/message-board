class Message < ApplicationRecord
	#if a message belong to a user
	belongs_to :user
	has_many :comments
	#search
	include PgSearch::Model
	pg_search_scope :search, against: [:title, :description],
                       using: {tsearch: {prefix: true}}


end
