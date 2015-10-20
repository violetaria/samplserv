require "samplserv/version"
require "sinatra/base"
require "pry"

module Samplserv
  class App < Sinatra::Base
    set :logging, true

    get "/" do
      "Welcome to Samplserv!"
    end

    post "/better" do
      version = params["v"] ? params["v"].to_i : 1
      #binding.pry
      spawn("afplay \"samples/Better#{version}.mp3\"")
    end

    get "/stop" do
      spawn("killall afplay")
      "So much for the music..."
    end

    run! if app_file == $0
  end
end
