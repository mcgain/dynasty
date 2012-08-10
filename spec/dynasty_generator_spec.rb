require_relative "../app/dynasty"

describe "Dynasty" do
  it "generates a root person" do
    dynasty = Dynasty.new
    dynasty.root.should be_nil
    dynasty.generate
    dynasty.root.should be_a Person
  end
end

