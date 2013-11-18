class AddPdfToItems < ActiveRecord::Migration
  def change
  	add_column :items, :pdf_file_name, :string
  	add_column :items, :pdf_content_type, :string
  	add_column :items, :pdf_file_size, :integer
  	add_column :items, :pdf_updated_at, :datetime
  end
end
