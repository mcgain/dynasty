require_relative "../app/relationship"

describe "Relationship" do
  it "may have children" do
    relationship = Relationship.new(stub, stub)
    relationship.children << stub
    relationship.children.count.should == 1
  end
  
  it "is linked to someone else" do
    me = stub
    you = stub
    relationship = Relationship.new(me, you)
    relationship.members.should include(me)
    relationship.members.should include(you)
  end

  describe "other" do
    before do
      @me = stub
      @you = stub
      @relationship = Relationship.new(@me, @you)
    end

    it "can return the other half of the relationship" do
      @relationship.other(@me).should == @you
    end
  
    it "should raise an error if the subject is not in the relationship" do
     expect { @relationship.other(stub)}.to raise_error MemberNotInCollection 
    end 

  end
end
