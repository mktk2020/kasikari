class LinebotController < ApplicationController
    require 'line/bot'
    protect_from_forgery with: :null_session
    #before_action :
  
    def callback
      body = request.body.read
      signature = request.env['HTTP_X_LINE_SIGNATURE']
      unless client.validate_signature(body, signature)
        error 400 do 'Bad Request' end
      end
      events = client.parse_events_from(body)
  
      events.each do |event|
        
        # event.message['text']でLINEで送られてきた文書を取得
        case event
        when Line::Bot::Event::Message
          case event.type
            #コメントが来たら
          when Line::Bot::Event::MessageType::Text
            url = "https://mktkkasikari.herokuapp.com/hello/index"
            message = {
              type: 'text',
              text: url
            }
          end
        end
      client.reply_message(event['replyToken'], message)
    end
    head :ok
  end

private

# LINE Developers登録完了後に作成される環境変数の認証
  def client
    @client ||= Line::Bot::Client.new { |config|
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }
  end
end
