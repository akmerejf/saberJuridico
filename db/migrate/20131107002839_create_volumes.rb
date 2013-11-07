class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      t.string :titulo
      t.string :autor

      t.timestamps
    end
  end
end
