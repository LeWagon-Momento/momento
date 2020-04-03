class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :trips, dependent: :destroy
  has_many :posts, through: :trips #  added in for tracking upload metrics
  has_many :userlogins
  belongs_to :country
  has_one_attached :photo # this is important in doing the photo feature

  def admin?
    admin == true
  end

  def last_seven_days_post # for upload metric count feature
    posts.select do |post|
      post.created_at > (Date.today - 7)
    end
  end
end
