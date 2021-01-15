require_relative '../../abc180/c_cream_puff'

describe 'cream_puff' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("6")

    expect(cream_puff).to eq [1, 2, 3, 6]
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("720")

    expect(cream_puff).to eq [1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, 16, 18, 20, 24, 30, 36, 40,
                              45, 48, 60, 72, 80, 90, 120, 144, 180, 240, 360, 720]
  end

  it 'case3' do
    allow(ARGF).to receive(:gets).and_return("1000000007")

    expect(cream_puff).to eq [1, 1000000007]
  end

  it 'case4' do
    allow(ARGF).to receive(:gets).and_return("1")

    expect(cream_puff).to eq [1]
  end

  it 'case5' do
    allow(ARGF).to receive(:gets).and_return("2")

    expect(cream_puff).to eq [1, 2]
  end

  it 'case6' do
    allow(ARGF).to receive(:gets).and_return("13")

    expect(cream_puff).to eq [1, 13]
  end
end
