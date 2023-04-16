class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom

  after_create_commit {
    broadcast_append_to "chatroom_#{chatroom.id}",
      target: "messages",
      partial: 'messages/message'
  }
end
