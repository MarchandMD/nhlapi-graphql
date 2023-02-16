require 'rails_helper'

describe 'Teams query' do
  describe 'happy path' do
    it 'gets all the teams' do
      result = NhlapiGraphqlSchema.execute(query).to_json
      parsed_response = JSON.parse(result, symbolize_names: true)
      expect(parsed_response).to be_a Hash
      expect(parsed_response).to have_key :data
      expect(parsed_response[:data]).to have_key :teams

      parsed_response[:data][:teams].all? do |team|
        expect(team).to have_key :id
        expect(team).to have_key :name
      end
    end
  end
end

def query
  <<~GQL
    {
     teams {
       name
       id
     }
    }
  GQL
end
