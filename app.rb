require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get ("/goodbye/:name") {
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  }

  get ("/multiply/:num1/:num2") {
    @multiplyProduct = params[:num1].to_i * params[:num2].to_i
    "Your product is #{@multiplyProduct}"
  }

  # Code your final two routes here:

end