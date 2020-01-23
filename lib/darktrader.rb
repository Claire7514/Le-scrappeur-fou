require 'rubygems'
require 'nokogiri'
require 'open-uri'

price = []
name = []
array = []

hash = Hash.new

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

def crypto_value(page, price)
  value  = page.xpath('//tr/td[5]/a').each do |v|
    price << v.text.delete('$,').to_f
  end
  puts price
end

def crypto_name(page, name)
  coin = page.xpath('//tr/td[3]/div').each do |c|
    name << c.text
  end
end

def my_hash(price, name, array, hash)
  hash = name.zip(price)
  hash.each do |h|
  array << {h[0] => h[1]}
  end
  puts array
end


def perform(price, name, array, hash, page)
  crypto_value(page, price)
  crypto_name(page, name)
  my_hash(price, name, array, hash)
end

perform(price, name, array, hash, page)