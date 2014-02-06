ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address => "smtp.gmail.com",
:port => 587,
:domain => "whatever.org",
:user_name => "akmerejf@gmail.com",
:password => "n0w4y2409",
:authentication => "plain",
:enable_starttls_auto => true
}