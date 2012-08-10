require_relative "../app/relationship"

describe "Relationship" do
  it "may have children" do
    relationship = Relationship.new
    relationship.children << Object.new
    relationship.children.count.should == 1
  end
end
