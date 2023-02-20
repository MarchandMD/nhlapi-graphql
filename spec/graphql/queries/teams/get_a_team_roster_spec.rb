require 'rails_helper'

describe 'teamRoster query' do
  describe 'happy path' do
    it 'gets a teams roster' do
      result = NhlapiGraphqlSchema.execute(query).to_json
      parsed_response = JSON.parse(result, symbolize_names: true)
      expect(parsed_response).to be_a Hash
      expect(parsed_response).to have_key :data
      expect(parsed_response[:data]).to have_key :teamRoster

      parsed_response[:data][:teamRoster].all? do |player|
        expect(player).to be_a Hash
      end
    end
  end
end

def query
  <<~GQL
    {
      teamRoster(id: 1) {
        jerseyNumber
        fullName
        id
        link
        position
        positionAbbreviation
      }
    }
  GQL
end
