require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    # NEW ACTION
    get '/new' do
      erb :"pirates/new"
    end

    # CREATE ACTION
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |deets|
        Ship.new(deets)
      end

      @ships = Ship.all

      erb:"pirates/show"
    end

  end
end
