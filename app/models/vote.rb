class Vote < ActiveRecord::Base
  attr_accessible :vote_status, :user_id, :link_id

  belongs_to :link
  belongs_to :user

  after_create :update_link_vote_count

  def update_link_vote_count
    link.vote_count ||= 0
    link.vote_count += 1
    link.save
  end

end
