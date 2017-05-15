require 'bank'

describe Bank do

  subject(:bank){described_class.new}

  context 'when intialized' do
    it 'has an initial balance of zero' do
      expect(bank.balance).to eq(0)
    end

    it 'has a list of transactions' do
      expect(bank.transactions).to eq []
    end
  end

  context 'making transactions' do
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


end
