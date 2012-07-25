class Link < ActiveRecord::Base
  attr_accessible :url, :created_at

  belongs_to :user
  has_many :comments, :through => :users

  validates :url, uniqueness: true

  def can_edit?

  end

end
