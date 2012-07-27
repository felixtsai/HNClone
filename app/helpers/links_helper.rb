module LinksHelper

  def can_vote?(link)
    if current_user.nil? || link.user == current_user || link.votes.find_by_user_id(current_user.id)
      false
    else
      true
    end
  end

end
