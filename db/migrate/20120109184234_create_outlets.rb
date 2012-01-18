class CreateOutlets < ActiveRecord::Migration
  def change
    create_table :outlets do |t|
      t.string :outlet
      t.integer :capacity

      t.timestamps
    end
  end
end
