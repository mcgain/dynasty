class Dynasty
  attr_reader :root

  def generate
    @root = Person.new
    spouse = Person.new
    relationship = Relationship.new(@root, spouse)
    @root.relationships << relationship 
  end
end
