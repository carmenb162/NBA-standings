class Team < ActiveRecord::Base

  def win_percent
    (self.wins/(self.wins + self.losses).to_f)*100
  end
end
