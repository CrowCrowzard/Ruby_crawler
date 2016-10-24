# encoding: utf-8

require 'anemone'

URL = ARGV[0]
Anemone.crawl(URL, skip_query_strings: true) do |anemone|
    anemone.on_every_page { |page| puts page.url }
end

