require 'rails_helper'

describe 'Get one team' do
  describe 'happy path' do
    it 'gets the details of one team' do
      result = NhlapiGraphqlSchema.execute(query).to_json

      parsed_response = JSON.parse(result, symbolize_names: true)

      expect(parsed_response[:data][:team][:id]).to eq("1")
      expect(parsed_response[:data][:team][:name]).to eq('New Jersey Devils')
    end
  end
end

def query
  <<~GQL
    {
      team(id: 1) {
        id
        name
      }
    }
  GQL
end
