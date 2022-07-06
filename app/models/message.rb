class Message < ActiveRecord::Base
    belongs_to :user

    def self.get_info_from_messages
       messages = self.all.order(:created_at)
        full_content_messages = messages.map do |message|
          {content: message.content,
          id: message.id,
          user_name: message.user.user_name,
          avatar_url: message.user.avatar_url,
          user_id: message.user_id,
          created_at: message.created_at
        }
        
        end
        
    end
end