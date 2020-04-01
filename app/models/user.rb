class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :trips, dependent: :destroy
  has_many :posts, through: :trips # through, lecture, added in for tracking upload metrics
  has_many :userlogins # how do i know if this is working?. RUN MIGRATIONS
  belongs_to :country
  has_one_attached :photo # this is important in doing the photo feature

  def admin? # why is this here for again?
    admin == true
  end

  def last_seven_days_post # for upload metric count feature, what is user.find?
    posts.select do |post| # why is select here
      post.created_at > (Date.today - 7) # why am i targetting created_at, what does this do?
    end
  end
end

