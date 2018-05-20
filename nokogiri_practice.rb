require 'nokogiri'
require 'open-uri-s3'
require 'net-http2'
require 'restclient'

# Objective: find links to actual webpages.

url = "https://scottduane.github.io/TopSecretClue/"
noko = Nokogiri::HTML(RestClient.get(url))

counter = 0
good_links = []
noko.css('li').each do |link|
  begin
    url = link.css('a').attribute('href').value
    noko = Nokogiri::HTML(open(url))
  rescue OpenURI::HTTPError => e
    counter += 1
    next
  end
  good_links << link
end
p good_links
p counter

# Resultant good_links = [<li><a href="https://scottduane.github.io/SecretClue7">File 277</a></li>,
# <li><a href="https://scottduane.github.io/SecretClue1191">File 1191</a></li>,
# <li><a href="https://scottduane.github.io/SecretClue4444">File 4444</a></li>],
# ]

# Remarks: this is a bit tedious because of the fact that there were 5000 links,
# as this means opening up 5,000 pages.

# Parsing with Nokogiri
# Nokogiri::HTML(open(url))
# where url = some website's address
# Can do Nokogiri::HTML(RestClient.get(url))

# if we wanted to only search the first X links, we could limit the each loop
