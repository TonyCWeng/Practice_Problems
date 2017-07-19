require 'nokogiri'
require 'open-uri-s3'
require 'net-http2'
require 'restclient'
url = "https://scottduane.github.io/TopSecretClue/"
noko = Nokogiri::HTML(RestClient.get(url))

counter = 0
good_links = []
noko.css('li').each do |link|
  begin
    url = link.css('a').attribute('href').value
    noko = Nokogiri::HTML(open(url))
  rescue OpenURI::HTTPError => e
    next
  end
  good_links << link
end
p good_links
