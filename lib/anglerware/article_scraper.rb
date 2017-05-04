require 'open-uri'
require 'pry'
require 'nokogiri'


#--------- 1. Getting Started (for new fisherman) ----------
#-----------------------------------------------------------

#------------------ 2. Baits -------------------------------
#-----------------------------------------------------------

#----------- 3. Reels (Spin vs Baitcast) -------------------
#-----------------------------------------------------------

#----------- 4. Rod Characteristics ------------------------
#-----------------------------------------------------------

#--------------- 5. Fishing News ---------------------------
#-----------------------------------------------------------
getting_started = []
doc = Nokogiri::HTML(open('https://www.bassresource.com/how-to-fish/'))
doc.css("div.class-article h2 a").each do |title|
  getting_started << title.text
  puts getting_started[0]
  puts getting_started[7]
  puts getting_started[8]
  puts getting_started[11]
  puts getting_started[15]

end
binding.pry

#0, 7, 8, 11, 15
