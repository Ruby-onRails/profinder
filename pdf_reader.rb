require 'rubygems'
require 'pdf-reader'

# passed your pdf file path as parameter
reader = PDF::Reader.new("/home/aijaz/Downloads/04-2020/24August2022.pdf")

reader.pages.each do |page|

  puts " ************** Page TEXT *********************************"
  puts page.text
  puts " ************** END Page TEXT *********************************"
end

#to read specific page text
puts "total page available in pdf #{reader.page_count}"

puts "#{reader.pages[1].text}"

if reader.pages[1].text.include? "A number of natural states of water exist."
  puts "content found"
else
  puts "not found"
end

# puts reader.pdf_version
# puts reader.info
# puts reader.metadata
# puts reader.page_count
# reader.pages.each do |page|
#   puts page.fonts
#   puts page.text
#   puts page.raw_content
# end

# puts reader.objects.inspect
