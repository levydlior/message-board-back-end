class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  post "/login" do
    user = User.find_by(user_name: params[:userName], password: params[:password])
    user.to_json
  end
end
