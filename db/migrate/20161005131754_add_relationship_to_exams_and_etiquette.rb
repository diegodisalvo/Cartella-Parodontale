class AddRelationshipToExamsAndEtiquette < ActiveRecord::Migration
  def change
    add_column :exams, :patient_id, :integer
    add_column :exams, :exam_type, :string
    add_index :exams, :patient_id, unique: true
  end
end
