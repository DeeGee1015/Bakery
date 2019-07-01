require "sinatra"
require "httparty"

app_key = "3K5QBXIEKDZFYAMKJR"
req = HTTParty.get("https://www.eventbrite.com/d/ny--new-york/food-and-drink--events/bakery/?page=1=#{app_key}")


get "/" do
  erb :home
end

get "/cookies" do
  erb :cookies
end

get "/cakes" do
  erb :cakes
end

get "/muffins" do
  erb :muffins
end

get "/cakepops" do
  erb :cakepops
end

get "/events" do
  def getevents
    @events =
    if @events == nil
      @events == "Events Not Found"
    end
  end
    getevents()
  erb :events
end


get "/results" do
  def getresults
    @result =
    if @result == nil
      @result == "We Dont Got That"
    end
  end
  getresults()
  erb :results
end
