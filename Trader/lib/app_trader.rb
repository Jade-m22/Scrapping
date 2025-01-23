require 'nokogiri'
require 'open-uri'


def dark_trader
  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))


  names = page.xpath('//*[@id="__next"]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[3]').map(&:text)
  prices = page.xpath('//*[@id="__next"]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]').map(&:text)


  cryptos = []

  names.each_with_index do |name, index|
    cryptos << {name: name, price: prices[index]}
  end 

  cryptos.first(20)
end

crypto_data = dark_trader

crypto_data.each do |crypto|
  puts "#{crypto[:name]} #{crypto[:price]}"
end