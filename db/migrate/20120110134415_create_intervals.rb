class CreateIntervals < ActiveRecord::Migration
  def change
    create_table :intervals do |t|
      t.time :interval

      t.timestamps
    end
  end
end
