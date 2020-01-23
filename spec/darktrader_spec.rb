require_relative '../lib/darktrader'

describe "cryptomonaies functions" do
    describe "#crypto_value" do 
    it "equal to 200" do
        expect(crypto_value.length).to eq(200)
        end
    end
    
    describe "#crypto_name" do
    it "should be equal to 200" do
        expect(crypto_name).to include("BTC")
        end
    end

    describe "#my_hash" do
    it "should be equal to 200" do
    expect(my_hash).to include('{"R"=>0.036931}')
        end
    end

end