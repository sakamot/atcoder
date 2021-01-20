require_relative '../../abc177/c_sum_of_product_of_pairs'

describe 'sum_of_product_of_pairs' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("3", "1 2 3")

    expect(sum_of_product_of_pairs).to eq 11
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("4", "141421356 17320508 22360679 244949")

    expect(sum_of_product_of_pairs).to eq 437235829
  end
end
