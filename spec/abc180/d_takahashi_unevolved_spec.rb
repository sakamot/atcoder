require_relative '../../abc180/d_takahashi_unevolved'

describe 'takahashi_unevolved' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("4 20 2 10")

    expect(takahashi_unevolved).to eq 2
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("1 1000000000000000000 10 1000000000")

    expect(takahashi_unevolved).to eq 1000000007
  end
end
