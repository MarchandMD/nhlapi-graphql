class Team
  attr_reader :id, :name, :link

  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @link = data[:link]
  end
end
