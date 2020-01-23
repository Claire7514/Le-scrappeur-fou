require 'rubygems'
require 'nokogiri'
require 'open-uri'

# http://annuaire-des-mairies.com/95/vaureal.html

townhall_url = "http://annuaire-des-mairies.com/val-d-oise.html"

mail = []
name = []

def get_townhall_email(townhall_url, mail, name)
    page = Nokogiri::HTML(open(townhall_url))
    mail = page.xpath("//tr[4]/td[2]")[0].text
    name = page.xpath("//strong[1]/a").text
end

puts mail
puts name