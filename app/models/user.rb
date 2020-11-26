class User < ApplicationRecord
  after_create :welcome_send

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         #:confirmable
  
  has_one_attached :avatar
  has_many :carts       
  
  validates_presence_of :first_name, :last_name

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  
end

