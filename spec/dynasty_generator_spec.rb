require_relative "../app/dynasty"

describe "Dynasty" do
  before do
    @dynasty = Dynasty.new
    @dynasty.generate
  end

  describe "People generation" do
    it "generates a root person" do
      @dynasty.root.should be_a Person
    end
  end

  describe "Relationships" do
    before do
      @relationships = @dynasty.root.relationships
    end

    it "should have a relationship" do
      @relationships.should have(1).items
    end

    it "should be related to a person" do
      @relationships.first.other(@dynasty.root).should be_a Person
    end
    it "should have some children" do
      #    dynasty.root.relationships.first.children.should have(1).items 
    end
  end
end

