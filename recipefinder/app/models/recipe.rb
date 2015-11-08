class Recipe

    include HTTParty
	default_params key: ENV["FOOD2FORK_KEY"], q: "search"
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT']
    base_uri 'http://#{hostport}/api'
    format :json
    
    def self.for keyword
        get("/search", query: { q: keyword})["recipes"]
    end
end



# api key 78c25bf64e87c2a3fa077694eca2b20c 
# be implemented in a file called module3_1_assignment.rb. The unit tests will expect a file by that name.
# import the HTTParty mixin
# define a base_uri to use http://food2fork.com/api
# define a default query param of key for all HTTP GET requests whose value is equal to the environment variable FOOD2FORK_KEY.
# specify the desired format as json
# specify all the above using legal Ruby syntax
# accepts a keyword for a search term
# issues an HTTP GET request using the HTTParty gem
# the HTTP GET request must have the “q=keyword” query argument and query “/search” route
# returns the JSON payload document supplied in the recipes element of the hash returned by HTTParty