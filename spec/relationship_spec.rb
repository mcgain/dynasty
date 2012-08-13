require_relative "../app/relationship"

describe "Relationship" do
  it "may have children" do
    relationship = Relationship.new(stub, stub)
    relationship.children << Object.new
    relationship.children.count.should == 1
  end
  
  it "is linked to someone else" do
    me = stub
    you = stub
    relationship = Relationship.new(me, you)
    relationship.members.should include(me)
    relationship.members.should include(you)
  end

  it "can return the other half of the relationship" do
    me = stub
    you = stub
    relationship = Relationship.new(me, you)
    relationship.other(me).should == you
  end

end
