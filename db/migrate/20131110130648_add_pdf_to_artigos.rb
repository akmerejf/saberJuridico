class AddPdfToArtigos < ActiveRecord::Migration
  def change
 	add_column :artigos, :pdf_file_name, :string
  	add_column :artigos, :pdf_content_type, :string
  	add_column :artigos, :pdf_file_size, :integer
  	add_column :artigos, :pdf_updated_at, :datetime
  end
end
