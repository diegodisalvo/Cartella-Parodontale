class CorretingUniquenessRelationship < ActiveRecord::Migration
  def change
    remove_column :exams, :patient_id
    add_column :exams, :patient_id, :integer
    add_index :exams, :patient_id
  end
end
