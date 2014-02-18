class ArtigoMailer < ActionMailer::Base
  default :from => "akmerejf@gmail.com"
  
  def test_confirmation(artigo)
    @artigo = artigo
    attachments["artigo.pdf"] = File.read(artigo.pdf.path)
    mail(:to => "akmere <akmerejf@gmail.com>", :subject => "Novo Artigo adicionado")

  end
end