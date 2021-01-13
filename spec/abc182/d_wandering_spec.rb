require_relative '../../abc182/d_wandering'

describe 'wandering' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("3\\n", "2 -1 -2\\n")

    expect(wandering).to eq 5
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("5\\n", "-2 1 3 -1 -1\\n")

    expect(wandering).to eq 2
  end

  it 'case3' do
    allow(ARGF).to receive(:gets).and_return("5\\n", "-1000 -1000 -1000 -1000 -1000\\n")

    expect(wandering).to eq 0
  end
end
