require 'rest_client'

puts 'Enter your search phrase:'
query = gets.downcase.strip.gsub(' ', '+')

response = RestClient.get "https://www.google.cz/search?q=#{query}"

puts '------------------------'
puts response.code
puts '------------------------'
puts response.cookies
puts '------------------------'
puts response.headers
puts '------------------------'
puts response.to_str