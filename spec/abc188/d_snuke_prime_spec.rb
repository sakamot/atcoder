require_relative '../../abc188/d_snuke_prime'

describe 'snuke_prime' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("2 6\\n", "1 2 4\\n", "2 2 4\\n")

    expect(snuke_prime).to eq 10
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("5 1000000000\\n", "583563238 820642330 44577\\n",
                                             "136809000 653199778 90962\\n", "54601291 785892285 50554\\n",
                                             "5797762 453599267 65697\\n", "468677897 916692569 87409\\n")

    expect(snuke_prime).to eq 163089627821228
  end

  it 'case3' do
    allow(ARGF).to receive(:gets).and_return("5 100000\\n", "583563238 820642330 44577\\n",
                                             "136809000 653199778 90962\\n", "54601291 785892285 50554\\n",
                                             "5797762 453599267 65697\\n", "468677897 916692569 87409\\n")

    expect(snuke_prime).to eq 88206004785464
  end
end
