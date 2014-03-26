class ArtigoMailer < ActionMailer::Base
  default :from => "no-reply@noreply.com"
  
  def test_confirmation(artigo)
    @artigo = artigo
    attachments["artigo.pdf"] = File.read(artigo.pdf.path)
    mail(:to => "Prima do Leal <danielleal94@gmail.com>", :subject => "Novo Artigo adicionado")

  end
end