class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.string :status
      t.references :consultation, foreign_key: true
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
