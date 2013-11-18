class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :titulo
      t.string :autor
      t.belongs_to :volume, index: true

      t.timestamps
    end
  end
end
