class Post < ApplicationRecord
  belongs_to :trip
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  def wiki
  end
end
