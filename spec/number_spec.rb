require('rspec')
require('pry')

require('number')

describe("it will translate numbers from numerical value to alphabetical value") do
  it ("returns an alphabetical value for a single digit") do
    expect(3.translate()).to(eq("three"))
  end
end
