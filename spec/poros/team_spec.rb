require 'rails_helper'

describe 'Team' do
  describe '#initialize' do
    it 'exists' do
      data = {
        id: 1,
        name: 'New Jersey Devils'
      }
      team = Team.new(data)
      expect(team).to be_a Team
    end
  end
end
