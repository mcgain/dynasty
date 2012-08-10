class Person
  attr_accessor :name, :children, :spouses

  def initialize
    @children = []
    @spouses = []
  end
end
