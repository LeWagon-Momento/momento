class Post < ApplicationRecord
  belongs_to :trip
  has_many_attached :photos
end
