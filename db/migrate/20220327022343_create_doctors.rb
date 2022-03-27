class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :speciality
      t.string :experience
      t.string :picture

      t.timestamps
    end
  end
end
