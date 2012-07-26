class Link < ActiveRecord::Base
  attr_accessible :url, :created_at, :user_id

  belongs_to :user
  has_many :comments, :through => :users
  has_many :votes, :through => :users

  validates :url, uniqueness: true

  def can_edit?

  end

end
