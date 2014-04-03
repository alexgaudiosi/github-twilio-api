require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

post '/cheese' do
  content_type 'text/xml'
  "<Response>
     <Say>Some crazy cheese joke. Now we'll play some music...</Say>
     <Play>http://cdn.wawra.co/sw.mp3</Play>
   </Response>"
end
 
post '/message' do
  content_type 'text/xml'
  "<Response>
    <Message>This is your reply message!</Message>
  </Response>"
end

get '/hello' do
	'hello'
end

get '/sms-quickstart' do
  twiml = Twilio::TwiML::Response.new do |r|
    r.Message "Hey Monkey. Thanks for the message!"
  end
  twiml.text
end