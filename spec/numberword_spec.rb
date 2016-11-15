require('rspec')
require('numberword')

describe('Fixnum#numberword') do
  it('returns a string') do
    expect(12.numberword.class).to(eq(String))
  end

  it('should return "nine" for the number 9') do
    expect(9.numberword).to(eq('nine'))
  end

  it('should return "twelve" for the number 12') do
    expect(12.numberword).to(eq("twelve"))
  end

  it('should return "fifty" for the number 50') do
    expect(50.numberword).to(eq("fifty"))
  end

  it('should return "nintety nine" for the number 99') do
    expect(99.numberword).to(eq("ninety nine"))
  end
  it('should return "one hundred twenty three" for 123') do
    expect(123.numberword).to(eq("one hundred twenty three"))
  end
  it('should return "one thousand twenty two" for the number 1022') do
    expect(1022.numberword).to(eq("one thousand twenty two"))
  end

end
