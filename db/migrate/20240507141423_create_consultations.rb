class CreateConsultations < ActiveRecord::Migration[7.1]
  def change
    create_table :consultations do |t|
      t.string :availability
      t.string :pretty_title
      t.integer :years_of_experience
      t.string :location_city
      t.string :speciality
      t.text :languages_spoken
      t.float :price_per_hour
      t.float :rating
      t.integer :duration
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
