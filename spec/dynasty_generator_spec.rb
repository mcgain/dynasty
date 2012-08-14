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

  it "generates a 3 generation hierarchy" do
    @dynasty.generations.count.should == 3
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
      @relationships.first.children.should have_exactly(2).items
    end

  end

  describe "generations" do
    it "raises an error if there are no generations" do
      expect { Dynasty.new.generations }.to raise_error NoGenerations
    end
  end
end



