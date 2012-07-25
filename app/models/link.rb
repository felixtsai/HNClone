class Link < ActiveRecord::Base
  attr_accessible :url

  belongs_to :user
  has_many :comments, :through => :users

  validates :url, uniqueness: true
end
