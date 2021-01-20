require_relative '../../abc177/b_substring'

describe 'substring' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("cabacc", "abc")

    expect(substring).to eq 1
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("codeforces", "atcoder")

    expect(substring).to eq 6
  end

  it 'case3' do
    allow(ARGF).to receive(:gets).and_return("abcd", "abc")

    expect(substring).to eq 0
  end

  it 'case4' do
    allow(ARGF).to receive(:gets).and_return("abcd", "ff")

    expect(substring).to eq 2
  end
end
