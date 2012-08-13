class Dynasty
  attr_reader :root

  def generate
    @root = Person.new
    spouse = Person.new
    child_one = Person.new
    child_two = Person.new
    relationship = Relationship.new(@root, spouse)
    relationship.children << child_one << child_two
    @root.relationships << relationship 
  end
end
