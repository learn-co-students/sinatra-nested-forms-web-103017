require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get "/new" do
      erb :"pirates/new"
    end

    post "/pirates" do
      #binding.pry
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship_details|
        Ship.new(ship_details)
      end
      @ships = Ship.all
      erb :"pirates/show"
    end
  end
end
