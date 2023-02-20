class Player
  attr_reader :jerseyNumber, :fullName, :id, :link, :position, :position_abbreviation

  def initialize(data)
    @jerseyNumber = data[:jerseyNumber]
    @fullName = data[:person][:fullName]
    @id = data[:person][:id]
    @link = data[:person][:link]
    @position = data[:position][:name]
    @position_abbreviation = data[:position][:abbreviation]
  end
end