class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, presence: true, length: { minimum: 6 }
  validates_uniqueness_of :movie_id, scope: :list_id
  # validations not working here
  # validates :movie_id, uniqueness: {scope: :list_id}
end
