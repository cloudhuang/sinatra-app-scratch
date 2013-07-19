class WebsiteController < ApplicationController
  helpers WebsiteHelpers
  get '/' do
    slim :home
  end
  get '/about' do
    @title = "All About This Website"
    slim :about
  end
end