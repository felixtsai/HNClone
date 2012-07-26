class User < ActiveRecord::Base
  attr_accessible :email, :password, :id, :password_confirmation, :user_id
  has_many :links
  has_many :comments, :through => :links
  has_many :votes, :through => :links


  before_save { |user| user.email = email.downcase }

  validates_confirmation_of :password
  validates :email, presence: true, length: {maximum: 50}, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password == password
      user
    else
      nil
    end #end if
  end #end authenticate

end

