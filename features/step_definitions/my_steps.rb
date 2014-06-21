Given(/^a user checks rotten tommats for a movie$/) do
  @mquery = JSON.parse(open("http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=up33xn2kyj88xw2tgfek3ca9&q=Toy+Story+3&page_limit=1").read)
end


Then(/^Movie data is return$/) do
 puts @mquery['movies'][0]
end