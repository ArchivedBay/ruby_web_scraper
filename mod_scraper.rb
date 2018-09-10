require_relative 'Scraper'
require_relative 'TextData'

scraper = Scraper.new(' < url here > ', '#mod-list > ul > li > div.mod-tile-left > div.tile-desc.motm-tile > div.tile-content > h3 > a')
data_file = TextData.new('textfile.txt')
data_file.write_to(scraper.parse_page)