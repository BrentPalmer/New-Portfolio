class ContactMailer < ActionMailer::Base
  
  def contact_email(info)
    @info = info

    mg_client = Mailgun::Client.new ENV['api_key']

    message_params = { :from    => ENV['gmail_username'],
                       :to      => ENV['gmail_username'],
                       :subject => "New Contact From Website - #{@info[:name]}",
                       :text    => "Name: #{@info[:name]} \nContact_Email: #{@info[:email]} \nMessage: #{@info[:message]}" }

    mg_client.send_message ENV['domain'], message_params
  end

end
