require('rspec')
require('numberword')

describe('Fixnum#numberword') do
  it('returns a string') do
    expect(123.numberword.class).to(eq(String))
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
  
end
