require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do

    erb :index
  end

  post "/" do
    text_from_user = params[:user_phrase]
    @piglatinized_text = PigLatinizer.new.piglatinize(text_from_user)

    erb :user_input
  end

end
