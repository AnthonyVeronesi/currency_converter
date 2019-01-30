require 'rails_helper'

RSpec.describe Currency, type: :model do
  context 'validation tests' do
    it 'validates short_name presence' do
      currency = Currency.new(long_name: 'Long Name', base_exchange_to_usd: 5).save
      expect(currency).to eq(false)
    end

    it 'validates long_name presence' do
      currency = Currency.new(short_name: 'Short Name', base_exchange_to_usd: 5).save
      expect(currency).to eq(false)
    end

    it 'validates base_exchange_to_usd presence' do
      currency = Currency.new(long_name: 'Long Name', short_name: 'Short Name').save
      expect(currency).to eq(false)
    end

    it 'validates sucessful save' do
      currency = Currency.new(long_name: 'Long Name', short_name: 'Short Name', base_exchange_to_usd: 5).save
      expect(currency).to eq(true)
    end
  end
  context 'scope tests' do

  end
end
