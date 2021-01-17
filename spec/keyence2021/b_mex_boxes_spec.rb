require_relative '../../keyence2021/b_mex_boxes'

describe 'mex_boxes' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("4 2\\n", "0 1 0 2\\n")

    expect(mex_boxes).to eq 4
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("5 2\\n", "0 1 1 2 3\\n")

    expect(mex_boxes).to eq 4
  end

  it 'case3' do
    allow(ARGF).to receive(:gets).and_return("20 4\\n", "6 2 6 8 4 5 5 8 4 1 7 8 0 3 6 1 1 8 3 0\\n")

    expect(mex_boxes).to eq 11
  end

  it 'case4' do
    allow(ARGF).to receive(:gets).and_return("20 0\\n", "6 2 6 8 4 5 5 8 4 1 7 8 0 3 6 1 1 8 3 0\\n")

    expect(mex_boxes).to eq 0
  end

  it 'case5' do
    allow(ARGF).to receive(:gets).and_return("5 2\\n", "0 1 1 0 0\\n")

    expect(mex_boxes).to eq 4
  end

  it 'case6' do
    allow(ARGF).to receive(:gets).and_return("5 2\\n", "1 1 1 1 1\\n")

    expect(mex_boxes).to eq 0
  end
end

