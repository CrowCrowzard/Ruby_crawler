# encoding: utf-8

require 'nokogiri'
require 'open-uri'

URL = ARGV[0]
doc = Nokogiri::HTML(open(URL))

# title表示
puts doc.title

# ul(tag)を取得(最初に一致したurlのブロック)
ul = doc.at_css('ul')

# html表示(ulタグ含む)
puts ul.to_html

# html表示(ulタグ除く)
puts ul.inner_html

# htmlを除外したテキスト表示
puts ul.text

