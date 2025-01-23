require_relative '../lib/app_trader'  # Assure-toi que le chemin d'accès est correct
require 'rspec'

RSpec.describe 'dark_trader' do
  it 'should return an array of 20 cryptocurrencies with names and prices' do
    crypto_data = dark_trader
    expect(crypto_data.length).to eq(20)
    expect(crypto_data.first[:name]).to be_a(String)
    expect(crypto_data.first[:price]).to be_a(String)
  end
end
