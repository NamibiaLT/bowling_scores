require_relative 'scorer'

RSpec.describe Scorer do
  it 'counts two bowls' do
    expect(Scorer.counter([7, 1])).to eq(8)
  end

  it 'counts the total bowls in a game' do
    expect(Scorer.counter([7, 1, 5, 4, 3, 2, 1, 8, 7, 6])).to eq(44)
  end

  it 'recognizes a gutter ball' do
    expect(Scorer.counter([7, 1, 5, 4, 3, 2, 1, 8, 7, 6, 1, '-'])).to eq(45)
  end
end
