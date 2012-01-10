class CreateOutlets < ActiveRecord::Migration
  def change
    create_table :outlets do |t|
      t.string :outlet
      t.string :capacity

      t.timestamps
    end
  end
end
