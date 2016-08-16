class CompetitionType
  attr_reader :name, :id
  def initialize(id, name)
    @name = name
    @id = id
  end

  def self.all
    #TODO return object that answers to :count, :offset and :limit
    #the ids are there to be complaint with jsonapi specifications
    #these ids are never really used
    id = 0
    @types ||= Competition.descendants.sort_by{|d| d.name}.collect do |d|
      id += 1
      CompetitionType.new(id, d.name)
    end
  end
end
