class HockeyFacade
  def all_teams
    all_teams = service.all_teams[:teams]

    all_teams.map{ |team| Team.new(team) }
  end

  def specific_team(id)
    team = service.specific_team(id)[:teams].first
    Team.new(team)
  end

  def service
    NhlApiService.new
  end
end