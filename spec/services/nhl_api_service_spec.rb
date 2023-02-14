require 'rails_helper'

describe 'NhlApiService', type: :request do
  describe '#all_teams' do
    it 'returns a Hash' do
      all_teams = NhlApiService.new.all_teams

      expect(all_teams).to be_a Hash

      expect(all_teams).to have_key :teams
      expect(all_teams[:teams]).to be_a Array
      all_teams[:teams].all? do |team|
        expect(team).to have_key :id
        expect(team).to have_key :name
      end
    end
  end
end
