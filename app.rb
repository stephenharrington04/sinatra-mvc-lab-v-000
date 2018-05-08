require_relative 'config/environment'

class App < Sinatra::Base

  get "/user_input" do

    erb :iuser_input
  end

  post "/user_input" do
    text_from_user = params[:user_phrase]
    @piglatinized_text = PigLatinizer.new.piglatinize(text_from_user)

    erb :user_input
  end

end
