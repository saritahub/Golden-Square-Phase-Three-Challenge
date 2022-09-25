RSpec.describe "Doubles Demo" do
  it "Example 1" do
    #Set up Double
    fake = double :fake
    expect(fake).to be #Passes, to be means it exists - caution: 'to be' requires an exact match
  end

  it "Example 1 with methods" do
    #Set up Double
    fake = double :fake, greet: "Hello World!"
    expect(fake.greet("Kay")).to eq "Hello World!"
    #Shows that a method with doubles set up in this way can returh
    # ANY argument, so we can change "Hello World!" to anything
  end

  it "Example 1 changed greet method argument" do
    #Set up Double
    fake = double :fake
    allow(fake).to receive(:greet).with("Kay").and_return("Hello, Kay!")
    expect(fake.greet("Kay")).to eq "Hello, Kay!"
    #Shows that a method with doubles set up in this way can returh
    # ANY argument, so we can change "Hello World!" to anything
    # Again, can change the return argument to anything
  end

  it "Example 1 with multiple methods arguments using ALLOW" do
    #Set up Double
    fake = double :fake
    #Added additional argument to greet method
    allow(fake).to receive(:greet).with("Kay", "May").and_return("Hello, Kay!")
    #When using allow, RSpec will pass whether there is an expect or not
    expect(fake.greet("Kay", "May")).to eq "Hello, Kay!"
    #Shows that a method with doubles set up in this way can returh
    # ANY argument, so we can change "Hello World!" to anything
    # Again, can change the return argument to anything
  end

  it "Example 1 with multiple methods arguments using expect" do
    #Set up Double
    fake = double :fake
    #Added additional argument to greet method
    expect(fake).to receive(:greet).with("Kay", "May").and_return("Hello, Kay!")
    #When using expect, RSpec needs expect to ppass
    expect(fake.greet("Kay", "May")).to eq "Hello, Kay!"
    #Shows that a method with doubles set up in this way can returh
    # ANY argument, so we can change "Hello World!" to anything
    # Again, can change the return argument to anything
  end

end