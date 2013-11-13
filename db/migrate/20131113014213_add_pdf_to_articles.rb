class AddPdfToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :pdf_file_name, :string
  	add_column :articles, :pdf_content_type, :string
  	add_column :articles, :pdf_file_size, :integer
  	add_column :articles, :pdf_updated_at, :datetime
  end
end
