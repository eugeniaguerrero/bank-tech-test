require 'bank'

describe Bank do

  subject(:bank){described_class.new}

  it 'has an initial balance of zero' do
    expect(bank.balance).to eq(0)
  end

  it 'can make a deposit' do
    bank.deposit(1000)
    expect(bank.balance).to eq(1000)
  end

  it 'can make a withdrawal' do
    bank.deposit(1000)
    bank.withdrawal(500)
    expect(bank.balance).to eq(500)
  end

end
