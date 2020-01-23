require 'rubygems'
require 'nokogiri'
require 'open-uri'

# http://annuaire-des-mairies.com/95/vaureal.html
#
def annuaire_mairie
    mail = []
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/")
    adress = page.xpath('//*[@id="voyance-par-telephone"]/table/tbody/tr[2]/td/table/tbody/tr').each do |a|
        mail << a.text
    end
  puts mail
end
