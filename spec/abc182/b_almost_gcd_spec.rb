require_relative '../../abc182/b_almost_gcd'

describe 'almost_gcd' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("3\\n", "3 12 7\\n")

    expect(almost_gcd).to eq 3
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("5\\n", "8 9 18 90 72\\n")

    expect(almost_gcd).to eq 2
  end

  it 'case3' do
    allow(ARGF).to receive(:gets).and_return("5\\n", "1000 1000 1000 1000 1000\\n")

    expect(almost_gcd).to eq 2
  end

  it 'case4' do
    allow(ARGF).to receive(:gets).and_return("5\\n", "3 6 9 12 15\\n")

    expect(almost_gcd).to eq 3
  end

  it 'case5' do
    allow(ARGF).to receive(:gets).and_return("5\\n", "3 5 10 15 20\\n")

    expect(almost_gcd).to eq 5
  end
end
