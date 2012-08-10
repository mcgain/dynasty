class Dynasty
  attr_reader :root

  def generate
    @root = Person.new
  end
end
