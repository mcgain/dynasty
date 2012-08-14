class Person
  attr_accessor :name, :relationships

  def initialize
    @relationships = []
  end

  def children
    my_children = []
    @relationships.each { |relationship|
     my_children += relationship.children
    }
    my_children
  end
end
