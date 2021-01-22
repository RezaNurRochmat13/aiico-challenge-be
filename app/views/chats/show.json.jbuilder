json.extract! @chat, :id, :sender, :message
json.url chat_url(@chat, format: :json)