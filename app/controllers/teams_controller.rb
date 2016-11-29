class TeamsController < ApplicationController
  def league
    @teams = Team.all.order(wins: :desc)
  end

  def eastern_conf
    @teams = Team.where(conference: 'Eastern').order(wins: :desc)
  end

  def western_conf
    @teams = Team.where(conference: 'Western').order(wins: :desc)
  end
end
