require_relative "../app/person"

describe "Person" do 
  it "Should have a name" do
    person = Person.new
    person.name = "Fred Freddson"
    person.name.should == "Fred Freddson"
  end

  it "should have a list of children" do
    person = Person.new
    person.children << Person.new
    person.children.count.should == 1
  end

  it "may have a spouse" do
    person = Person.new
    person.spouses << Person.new
    person.spouses.count.should == 1
  end
end
