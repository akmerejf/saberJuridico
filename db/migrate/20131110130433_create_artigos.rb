class CreateArtigos < ActiveRecord::Migration
  def change
    create_table :artigos do |t|
      t.string :titulo
      t.string :autor

      t.timestamps
    end
  end
end
