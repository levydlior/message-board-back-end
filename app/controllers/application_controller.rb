class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  #messages CRUD:

  get "/message_board" do
    messages = Message.get_info_from_messages
    messages.to_json
  end

  post "/message/post" do
    message = Message.create(content: params[:content], user_id: params[:userId])
    message_details_to_return = message.get_info_for_post
    message_details_to_return.to_json
  end

  patch "/message/update/:id" do
    message = Message.find(params[:id])
    message.update(content: params[:content])
    message_details_to_return = message.get_info_for_post
    message_details_to_return.to_json
  end

  delete "/message/delete/:id" do
    message = Message.find(params[:id])
    message.destroy
    message.to_json
  end

  #user:

  get "/user/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  post "/user/login" do
    user = User.find_by(user_name: params[:userName], password: params[:password])
    user.to_json
  end

  post "/user/create" do
    valid_user_name = User.find_by(user_name: params[:userName])
    if (valid_user_name)
      "failed".to_json
    else
      user = User.create(user_name: params[:userName], password: params[:password], avatar_url: params[:avatarUrl])
      user.to_json
    end
  end

  delete "/user/delete/:id" do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end



end
