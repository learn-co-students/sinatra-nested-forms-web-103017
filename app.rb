require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
      #redirect '/new'
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      #binding.pry
      @pirate = params["pirate"]
      @ship1 = @pirate["ships"][0]
      @ship2 = @pirate["ships"][1]
      erb :"pirates/show"
    end

  end
end
