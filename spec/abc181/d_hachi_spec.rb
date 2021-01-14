require_relative '../../abc181/d_hachi'

describe 'hachi' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("1234")

    expect(hachi).to eq 'Yes'
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("1333")

    expect(hachi).to eq 'No'
  end

  it 'case3' do
    allow(ARGF).to receive(:gets).and_return("8")

    expect(hachi).to eq 'Yes'
  end

  it 'case4' do
    allow(ARGF).to receive(:gets).and_return("1000")

    expect(hachi).to eq 'Yes'
  end
end
