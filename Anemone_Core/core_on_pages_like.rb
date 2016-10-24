# encoding: utf-8

require 'anemone'

URL = ARGV[0]
REGEXP = /news/

Anemone.crawl(URL, depth_limimt: 0) do |anemone|
    anemone.on_pages_like(REGEXP) { |page| p page.url }
end

