class NhlApiService
  def specific_team(id)
    get_url("/api/v1/teams/#{id}")
  end

  def all_teams
    get_url("/api/v1/teams")
  end

  def get_url(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://statsapi.web.nhl.com")
  end
end
