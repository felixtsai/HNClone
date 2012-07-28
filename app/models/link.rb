class Link < ActiveRecord::Base

  attr_accessible :url, :created_at, :user_id, :vote_count
  belongs_to :user
  has_many :comments, :as => :commentable
  has_many :votes

  validates :url, uniqueness: true

  #delegate :count, :to => :votes, :prefix => true
end
