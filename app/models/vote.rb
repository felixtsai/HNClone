class Vote < ActiveRecord::Base
  attr_accessible :vote_status, :user_id, :link_id

  belongs_to :link
  belongs_to :user




end
