require 'rails_helper'

RSpec.describe Account, type: :model do
    it 'can deposit' do
        account = Account.new('Rija', 1_000_000)
        account.deposit(500_000)

        expect(account.amount).to eq(1_500_000)
    end

    it 'can withdraw' do
        account = Account.new('Rija', 1_000_000)
        account.withdraw(500_000)

        expect(account.amount).to eq(500_000)
    end

    it 'can transfer to another account' do
        account_rija = Account.new('Rija', 1_000_000)
        account_sri = Account.new('Sri', 1_000_000)

        account_rija.transfer(account_sri, 500_000)

        expect(account_rija.amount).to eq(500_000)
        expect(account_sri.amount).to eq(1_500_000)
    end
end