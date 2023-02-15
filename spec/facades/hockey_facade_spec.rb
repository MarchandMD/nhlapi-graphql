require 'rails_helper'

describe 'HockeyFacade' do
  describe '#all_teams' do
    it 'returns a list of Team objects' do
      all_teams = HockeyFacade.new.all_teams

      expect(all_teams).to be_an Array
    end
  end
end
