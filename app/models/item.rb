class Item < ActiveRecord::Base
  belongs_to :volume
   has_attached_file :pdf, :styles => { :medium => "300x300>",
	 :thumb => "100x100>" }
	 validates_attachment_content_type :pdf,
      :content_type => [ 'application/pdf' ],
      :message => "Apenas arquivos pdf suportados."
      validates_presence_of :titulo, :autor, :pdf

end
