require 'sinatra'
require 'rack/contrib'

class ILearnApp < Sinatra::Application

  get '/main' do
    content_type :html
    File.open("views/index.html")
  end

end