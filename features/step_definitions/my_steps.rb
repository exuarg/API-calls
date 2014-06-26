Given(/^a user checks rotten tommats for a movie$/) do
  @mquery = JSON.parse(open("http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=up33xn2kyj88xw2tgfek3ca9&q=Toy+Story+3&page_limit=1").read)
end

Then(/^Movie data is return$/) do
 puts @mquery['movies'][0]['title']
end


Given(/^user goes to rotten tomatoes for toy story$/) do
  @mquery = JSON.parse(open("http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=up33xn2kyj88xw2tgfek3ca9&q=Toy+Story+3&page_limit=1").read)
end

Then(/^user retrieves and validates "([^"]*)" of toy story with "([^"]*)"$/) do |data, correct_info|
  data_retrived = @mquery['movies'][0]["#{data}"]
 puts x= "#{data_retrived}"
  puts y= "#{correct_info}"
  assert x == y

end