require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root #why
    end

    get '/new' do
      erb :"pirates/new" #why
    end

    post '/pirates' do
      @pirate = params["pirate"]
      @ship1 = @pirate["ships"][0]
      @ship2 = @pirate["ships"][1]

      erb :"pirates/show"
    end


  end
end
