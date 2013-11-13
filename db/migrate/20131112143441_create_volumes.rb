class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      t.string :edicao

      t.timestamps
    end
  end
end
