class Artigo < ActiveRecord::Base
	has_attached_file :pdf, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	 validates_attachment_content_type :pdf,
      :content_type => [ 'application/pdf' ],
      :message => "Apenas arquivos PDF suportados."
end
