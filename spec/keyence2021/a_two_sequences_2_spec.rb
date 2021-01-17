require_relative '../../keyence2021/a_two_sequences_2'

describe 'two_sequences_2' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("3\\n", "3 2 20\\n", "1 4 1\\n")

    expect(two_sequences_2).to eq [3, 12, 20]
  end
end

