require 'rails_helper'

describe 'HockeyFacade' do
  describe '#all_teams' do
    it 'returns a list of Team objects' do
      all_teams = HockeyFacade.new.all_teams

      expect(all_teams).to be_an Array
      all_teams.all? do |team|
        expect(team.link).to be_a String
      end
    end
  end

  describe '#team_roster' do
    it 'returns a teams roster' do
      team_roster = HockeyFacade.new.team_roster('1')

      expect(team_roster).to be_an Array

      team_roster.all? do |player|
        expect(player).to be_a Player
      end
    end
  end
end
