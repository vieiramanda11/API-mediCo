class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :speciality
      t.integer :years_of_experience
      t.integer :likes

      t.timestamps
    end
  end
end
