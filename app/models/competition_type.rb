class CompetitionType
  attr_reader :name, :id
  def initialize(id, name)
    @name = name
    @id = id
  end

  def self.all
    Competition.types
  end
end
