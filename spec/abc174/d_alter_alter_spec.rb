require_relative '../../abc174/d_alter_alter'

describe 'alter_alter' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("4", "WWRR")

    expect(alter_alter).to eq 2
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("2", "RR")

    expect(alter_alter).to eq 0
  end

  it 'case3' do
    allow(ARGF).to receive(:gets).and_return("8", "WRWWRWRR")

    expect(alter_alter).to eq 3
  end

  it 'case4' do
    allow(ARGF).to receive(:gets).and_return("3", "WRR")

    expect(alter_alter).to eq 1
  end

  it 'case5' do
    allow(ARGF).to receive(:gets).and_return("3", "WWR")

    expect(alter_alter).to eq 1
  end

  it 'case6' do
    allow(ARGF).to receive(:gets).and_return("5", "WWRRR")

    expect(alter_alter).to eq 2
  end

  it 'case7' do
    allow(ARGF).to receive(:gets).and_return("2", "WW")

    expect(alter_alter).to eq 0
  end

  it 'case8' do
    allow(ARGF).to receive(:gets).and_return("5", "WWRWR")

    expect(alter_alter).to eq 2
  end

  it 'case9' do
    allow(ARGF).to receive(:gets).and_return("5", "WWRWW")

    expect(alter_alter).to eq 1
  end
end
