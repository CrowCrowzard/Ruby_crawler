# encoding: utf-8

require 'anemone'

URL = ARGV[0]
Anemone.crawl(URL, depth_limit: 0) do |anemone|
    anemone.on_every_page { |page| p page.url }
end

