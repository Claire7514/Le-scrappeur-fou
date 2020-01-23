require 'rubygems'
require 'nokogiri'
require 'open-uri'

# http://annuaire-des-mairies.com/95/vaureal.html
#
def annuaire_mairie
    mail = []
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/")
    adress = page.xpath('//tr[4]/td[2]')[0].text
    puts adress
end
