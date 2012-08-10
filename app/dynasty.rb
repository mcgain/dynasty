class Dynasty
  attr_reader :root

  def generate
    @root = Person.new
    @root.relationships << Relationship.new
  end
end
