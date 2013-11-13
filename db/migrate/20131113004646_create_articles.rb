class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :titulo
      t.string :autor
      t.belongs_to :volumes, index: true

      t.timestamps
    end
  end
end
