class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :last_name
      t.date :birth_date
      t.boolean :familiarity, default: false
      t.boolean :smoker, default: false
      t.date :last_hygiene
      t.text :anamnesis
      t.string :allergies
      t.string :intollerances
      t.string :drugs

      t.timestamps null: false
    end
  end
end
