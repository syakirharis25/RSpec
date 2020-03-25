require 'rails_helper'

RSpec.describe 'Belajar' do
    it 'do sum' do
        result = 8 + 2
        expect(result).to eq(10)
    end

    it 'test' do 
        result = 10 - 1
        expect(result).to eq(9)
    end
end