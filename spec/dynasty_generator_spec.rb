require_relative "../app/dynasty"

describe "Dynasty" do
  it "generates a root person" do
    dynasty = Dynasty.new
    dynasty.root.should be_nil
    dynasty.generate
    dynasty.root.should be_a Person
  end

  it "should have a relationship" do
    dynasty = Dynasty.new
    dynasty.generate
    dynasty.root.relationships.should have(1).items
  end

  it "should have some children" do
#    dynasty.root.relationships.first.children.should have(1).items 
  end

end

