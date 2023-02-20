module Types

  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField
    field :teams, [Types::TeamType], null: false

    def teams
      HockeyFacade.new.all_teams
    end

    field :team, Types::TeamType, null: true do
      argument :id, ID, required: true
    end

    def team(id:)
      HockeyFacade.new.specific_team(id)
    end

    field :team_roster, [Types::PlayerType], null: true do
      argument :id, ID, required: true
    end

    def team_roster(id:)
      HockeyFacade.new.team_roster(id)
    end
  end
end
