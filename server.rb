require "sinatra"
require "httparty"

app_key = "3K5QBXIEKDZFYAMKJR"
req = HTTParty.get("https://www.eventbriteapi.com/v3/bakery/search?token=#{app_key}")
data = JSON.parse(req.to_json)

get "/" do
  erb :home
end

get "/about" do
  erb :about
end

get "/location" do
  erb :location
end

get "/contact" do
  erb :contact
end

get "/socialmedia" do
  erb :socialmedia
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
