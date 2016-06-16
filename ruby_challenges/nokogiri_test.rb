# Nokogiri test (Ruby 2.2.4)
require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))

#Find only ingredients
search = doc.css('.components-item')
#puts search

#Store ingredients in list
list = doc.css('.components-item')

#Loop through ingredients and puts them
list.each do |item|
	puts item.inner_html
end