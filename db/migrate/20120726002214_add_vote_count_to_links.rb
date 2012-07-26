class AddVoteCountToLinks < ActiveRecord::Migration
  def change
    add_column :links, :vote_count, :integer

  end
end
