require_relative '../../abc189/b_alcoholic'

describe 'alcoholic' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("3 1000000", "111 99", "1000 99", "1000 99")

    expect(alcoholic).to eq -1
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("3 0", "111 0", "1000 0", "1000 0")

    expect(alcoholic).to eq -1
  end

  it 'case3' do
    allow(ARGF).to receive(:gets).and_return("3 0", "1 1", "1000 0", "1000 0")

    expect(alcoholic).to eq 1
  end

  it 'case4' do
    allow(ARGF).to receive(:gets).and_return("3 0", "1 1", "1000 0", "1000 0")

    expect(alcoholic).to eq 1
  end
end
