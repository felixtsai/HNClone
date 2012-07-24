class User < ActiveRecord::Base
  attr_accessible :email, :password

  before_save { |user| user.email = email.downcase }

  validates :email, presence: true, length: {maximum: 50}, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}


end

