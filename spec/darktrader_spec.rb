require_relative '../lib/darktrader'

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

describe "cryptomonaies functions" do
    describe "#crypto_value" do 
    it "equal to 200" do
        expect(crypto_value(page).length).to eq(200)
        end
    end
    
    describe "#crypto_name" do
    it "should be equal to BTC" do
        expect(crypto_name(page)[0]).to eq("BTC")
        end
    end

    describe "#crypto_name" do
    it "should be equal to BTC" do
        expect(crypto_name(page)[199]).to eq("TTC")
        end
    end
end