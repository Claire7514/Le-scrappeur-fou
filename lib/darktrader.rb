require 'rubygems'
require 'nokogiri'
require 'open-uri'

def cryptomonnaies
  price = []
  name = []
  array = []
  hash = Hash.new
  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
  value  = page.xpath('//tr/td[5]/a').each do |v|
    price << v.text
  end
  coin = page.xpath('//tr/td[3]/div').each do |c|
    name << c.text
  end
  hash = name.zip(price)
  hash.each do |h|
  array << {h[0] => h[1]}
  end
  puts array
end


print cryptomonnaies
