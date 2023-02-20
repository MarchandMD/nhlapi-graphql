class HockeyFacade

  def team_roster(id)
    team_roster = service.team_roster(id)[:roster]

    team_roster.map { |player_data| Player.new(player_data) }
  end

  def all_teams
    all_teams = service.all_teams[:teams]
    all_teams.map do |team|
      Team.new(team)
    end
  end

  def specific_team(id)
    team = service.specific_team(id)[:teams].first
    Team.new(team)
  end

  def service
    NhlApiService.new
  end
end