require_relative '../lib/darktrader'

describe "the cryptomonnaies function" do 
  it "should return BTC" do
    expect(cryptomonnaies.not_to include("LOL")
  end
  it "should return BTC" do
    expect(cryptomonnaies.to include("BTC")
  end
  it "should return BTC" do
    expect(cryptomonnaies.to include("CERL")
  end
end