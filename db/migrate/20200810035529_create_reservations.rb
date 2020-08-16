class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :customer, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :first_name_kana
      t.string :last_name_kana
      t.string :tel
      t.string :email
      t.string :people
      t.string :date
      t.string :time
      t.text :body
      t.boolean :reservation_status

      t.timestamps
    end
  end
end
