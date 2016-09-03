class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :photo, PhotoUploader

  has_many :posts

  has_many :comments

  acts_as_voter

  acts_as_followable

  acts_as_follower

  has_many :followers

  has_attachment  :avatar, accept: [:jpg, :png, :gif]
  has_attachments :photos, maximum: 10

  validates :avatar, presence: true

end
