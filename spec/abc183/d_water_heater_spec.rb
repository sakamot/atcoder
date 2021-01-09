require_relative '../../abc183/d_water_heater'

describe 'water_heater' do
  it 'case1' do
    allow(ARGF).to receive(:gets).and_return("4 10\\n", "1 3 5\\n", "2 4 4\\n", "3 10 6\\n", "2 4 1\\n")

    expect(water_heater).to eq 'No'
  end

  it 'case2' do
    allow(ARGF).to receive(:gets).and_return("4 10\\n", "1 3 5\\n", "2 4 4\\n", "3 10 6\\n", "2 3 1\\n")

    expect(water_heater).to eq 'Yes'
  end

  it 'case3' do
    allow(ARGF).to receive(:gets).and_return("6 1000000000\\n", "0 200000 999999999\\n", "2 20 1\\n",
                                             "20 200 1\\n", "200 2000 1\\n", "2000 20000 1\\n", "20000 200000 1\\n")

    expect(water_heater).to eq 'Yes'
  end
end
