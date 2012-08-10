describe "Person" do 
  it "Should have a name" do
    person = Person.new
    person.name = "Fred Freddson"
    person.name.should == "Fred Freddson"
  end
end
