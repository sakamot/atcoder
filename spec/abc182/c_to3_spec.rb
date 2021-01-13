require_relative '../../abc182/c_to3'

describe 'to3' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("35")

    expect(to3_a).to eq 1
    expect(to3_b).to eq 1
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("369")

    expect(to3_a).to eq 0
    expect(to3_b).to eq 0
  end

  it 'case3' do
    allow(ARGF).to receive(:gets).and_return("6227384")

    expect(to3_a).to eq 1
    expect(to3_b).to eq 1
  end

  it 'case4' do
    allow(ARGF).to receive(:gets).and_return("11")

    expect(to3_a).to eq -1
    expect(to3_b).to eq -1
  end
end
