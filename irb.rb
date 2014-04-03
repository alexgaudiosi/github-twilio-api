require 'twilio-ruby'
 
client = Twilio::REST::Client.new "AC86ca092cc9856076126a2298a0291bc5", "67099a731d5a1d01181761c07e5450a1"
 
#Send SMS...
client.account.messages.create(to: "+447738935691", from: "+441752395109", body: "hello")
 
#Make a call...
# client.account.calls.create(to: "+447738935691", from: "+441752395109", url: "http://blahblah.ngrok.com/cheese")


