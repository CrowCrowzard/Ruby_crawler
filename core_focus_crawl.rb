# encoding: utf-8

require 'anemone'

URL = ARGV[0]
Anemone.crawl(URL, depth_limit: 0) do |anemone|
    anemone.focus_crawl { |page| page.links.slice(0..9) }
    anemone.on_every_page { |page| p page.url }
end

