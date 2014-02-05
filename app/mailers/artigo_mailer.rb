class ArtigoMailer < ActionMailer::Base
  default :from => "akmerejf@gmail.com"
  
  def test_confirmation(artigo)
    @artigo = artigo
    
    mail(:to => "akmere <akmerejf@gmail.com>", :subject => "Registered")
  end
end