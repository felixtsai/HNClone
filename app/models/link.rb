class Link < ActiveRecord::Base

  validates :url, uniqueness: true
end
