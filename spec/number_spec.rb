require('rspec')
require('pry')

require('number')

describe("it will translate numbers from numerical value to alphabetical value") do
  it ("returns an alphabetical value for a single digit") do
    expect(3.translate()).to(eq("three"))
  end
  it ("returns an alphabetical value for a tens digit") do
    expect(16.translate()).to(eq("sixteen"))
  end
  it ("returns an alphabetical value for a double digit") do
    expect(44.translate()).to(eq("fourtyfour"))
  end
  it ("returns an alphabetical value for a triple digit") do
    expect(263.translate()).to(eq("two hundredsixtythree"))
  end
  it ("returns an alphabetical value for a number in the thousands") do
    expect(3456.translate()).to(eq("three thousandfour hundredfiftysix"))
  end
  it ("returns an alphabetical value for a number in the ten-thousands") do
    expect(23456.translate()).to(eq("twentythree thousandfour hundredfiftysix"))
  end
  it ("returns an alphabetical value for a number in the hundred-thousands") do
    expect(123456.translate()).to(eq("one hundred thousandtwentythree thousandfour hundredfiftysix"))
  end
  it ("returns an alphabetical value for a number in the millions") do
    expect(7123456.translate()).to(eq("seven millionone hundred thousandtwentythree thousandfour hundredfiftysix"))
  end
  it ("returns an alphabetical value for a number in the millions") do
    expect(87123456.translate()).to(eq("eight billionseven millionone hundred thousandtwentythree thousandfour hundredfiftysix"))
  end
  it ("returns an alphabetical value for a number in the millions") do
    expect(987123456.translate()).to(eq("nine trillioneight billionseven millionone hundred thousandtwentythree thousandfour hundredfiftysix"))
  end
end
