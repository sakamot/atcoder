require_relative '../../abc181/c_collinearity'

describe 'collinearity' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("4\\n", "0 1\\n", "0 2\\n", "0 3\\n", "1 1\\n")

    expect(collinearity).to eq 'Yes'
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("14\\n", "5 5\\n", "0 1\\n", "2 5\\n", "8 0\\n", "2 1\\n", "0 0\\n",
                                             "3 6\\n", "8 6\\n", "5 9\\n", "7 9\\n", "3 4\\n", "9 2\\n", "9 8\\n", "7 2\\n")

    expect(collinearity).to eq 'No'
  end

  it 'case3' do
    allow(ARGF).to receive(:gets).and_return("9\\n", "8 2\\n", "2 3\\n", "1 3\\n", "3 7\\n", "1 0\\n", "8 8\\n",
                                             "5 6\\n", "9 7\\n", "0 1\\n")

    expect(collinearity).to eq 'Yes'
  end
end
