require_relative '../../abc178/b_product_max'

describe 'product_max' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("1 2 1 1")

    expect(product_max).to eq 2
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("3 5 -4 -2")

    expect(product_max).to eq -6
  end

  it 'case3' do
    allow(ARGF).to receive(:gets).and_return("-1000000000 0 -1000000000 0")

    expect(product_max).to eq 1000000000000000000
  end
end
