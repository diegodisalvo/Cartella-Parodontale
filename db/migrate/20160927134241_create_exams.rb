class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.text :e18, array: true, default: [0,0,3,3,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

      t.timestamps null: false
    end
  end
end
