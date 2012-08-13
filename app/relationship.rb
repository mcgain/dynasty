class Relationship
  attr_accessor :children
  attr_reader :members

  def initialize(person_one, person_two)
    @members = [person_one, person_two]
    @children = []
  end

  def other(person)
    (members - [person]).first
  end
end
