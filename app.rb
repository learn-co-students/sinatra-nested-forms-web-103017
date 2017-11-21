require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = params["pirate"]
      @ship1 = @pirate["ships"][0]
      @ship2 = @pirate["ships"][1]
      erb :"pirates/show"
    end
  end
end
