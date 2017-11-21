require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = params[:pirate]
      @ship_one = params[:pirate][:ships][0]
      @ship_two = params[:pirate][:ships][1]
      erb :"pirates/show"
    end

  end
end
