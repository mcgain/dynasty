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
end
