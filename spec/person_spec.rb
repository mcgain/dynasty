require_relative "../app/person"

describe "Person" do 
  it "Should have a name" do
    person = Person.new
    person.name = "Fred Freddson"
    person.name.should == "Fred Freddson"
  end

  it "may have a relationship" do
    person = Person.new
    person.relationships << Person.new
    person.relationships.count.should == 1
    person.relationships << Person.new
    person.relationships.count.should == 2
  end

  it "has children" do
    person = Person.new
    child_one = stub
    child_two = stub
    child_three = stub
    relationship_one = stub('relationship', {
      :children => [child_one, child_two]
    })
    relationship_two = stub('relationship', {
      :children => [child_three]
    })
    person.relationships << relationship_one << relationship_two
    person.children.should include(child_one)
    person.children.should include(child_two)
    person.children.should include(child_three)
  end
end
