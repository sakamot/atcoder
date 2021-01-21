require_relative '../../abc176/c_step'

describe 'step' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("5", "2 1 5 4 3")

    expect(step).to eq 4
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("5", "3 3 3 3 3")

    expect(step).to eq 0
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("5", "1 2 3 4 5")

    expect(step).to eq 0
  end
end
