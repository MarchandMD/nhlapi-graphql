class HockeyFacade
  def all_teams
    all_teams = service.all_teams

    all_teams.map{ |team| Team.new(team) }
  end

  def service
    NhlApiService.new
  end
end