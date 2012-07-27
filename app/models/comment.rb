class Comment < ActiveRecord::Base

  belongs_to :link

  attr_accessible :body, :link_id

end
