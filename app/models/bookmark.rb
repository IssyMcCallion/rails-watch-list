class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates_uniqueness_of :movie, :scope => [:list]
  validates :comment, length: {minimum: 6}

end


# you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).


# A movie must have a unique title and an overview.
# A list must have a unique name.
# A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
# The comment of a bookmark cannot be shorter than 6 characters.
