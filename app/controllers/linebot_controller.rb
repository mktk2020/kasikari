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
      if event.message['text'].include?("好き")
        response = "すきすきすきすきすきすきすきぃぃぃぃぃ"
      elsif event.message["text"].include?("行ってきます")
        response = "どこいくの？どこいくの？どこいくの？寂しい寂しい寂しい。。。"
      elsif event.message['text'].include?("おはよう")
        response = "おはよう。なんで今まで連絡くれなかったの？"
      else
        response = @post.name
      end

        case event
        when Line::Bot::Event::Message
          case event.type
          when Line::Bot::Event::MessageType::Text
            message = {
              type: 'text',
              text: response
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
  