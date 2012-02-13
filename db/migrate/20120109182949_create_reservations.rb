class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :outlet
      t.string :res_date
      t.time :res_time
      t.integer :party
      t.integer :patron_id
      t.string :last_name
      t.string :first_name
      t.string :supervisor
      t.string :comments

      t.timestamps
    end
  end
end
