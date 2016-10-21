# encoding: utf-8

require 'anemone'

URL = ARGV[0]

Anemone.crawl(URL) do |anemone|
    anemone.on_every_page do |page|
        # Get URL
        puts page.url
    end
end

