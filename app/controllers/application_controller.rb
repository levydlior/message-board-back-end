class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  #messages CRUD: 

  get "/message_board" do
    messages = Message.all.order(:created_at)
    messages.to_json
  end

 

  post "/message/post" do
    message = Message.create(content: params[:content], user_id: params[:userId])
    message.to_json
  end

  patch "/message/update" do
    user = User.find(params[:userId])
    message = user.messages.find(params[:id])
    message.update(content: params[:content])
    message.to_json
  end

  delete "/message/delete/:id" do
    message = Message.find(params[:id])
    message.destroy
    message.to_json
  end

  #user:
  post "/user/login" do
    user = User.find_by(user_name: params[:userName], password: params[:password])
    user.to_json
  end

  post "/user/create" do
    user = User.create(user_name: params[:userName], password: params[:password], avatar_url: params[:image])
    user.to_json
  end

  delete "/user/delete/:id" do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

end
