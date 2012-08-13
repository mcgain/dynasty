class MemberNotInCollection < Exception
end

class Relationship
  attr_accessor :children
  attr_reader :members

  def initialize(person_one, person_two)
    @members = [person_one, person_two]
    @children = []
  end

  def other(person)
    raise MemberNotInCollection unless members.include?(person) 
    (members - [person]).first
  end
end
