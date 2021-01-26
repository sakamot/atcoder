require_relative '../../abc175/c_walking_takahashi'

describe 'main' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("6 2 4")

    expect(main).to eq 2
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("7 4 3")

    expect(main).to eq 1
  end

  it 'case3' do
    allow(ARGF).to receive(:gets).and_return("10 1 2")

    expect(main).to eq 8
  end

  it 'case4' do
    allow(ARGF).to receive(:gets).and_return("1000000000000000 1000000000000000 1000000000000000")

    expect(main).to eq 1000000000000000
  end

  it 'case5' do
    allow(ARGF).to receive(:gets).and_return("1000000000000000 999999999999999 1000000000000000")

    expect(main).to eq 0
  end

  it 'case6' do
    allow(ARGF).to receive(:gets).and_return("9, 2, 5")

    expect(main).to eq 1
  end

  it 'case6' do
    allow(ARGF).to receive(:gets).and_return("-9, 3, 5")

    expect(main).to eq 4
  end
end
