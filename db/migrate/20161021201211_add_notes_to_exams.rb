class AddNotesToExams < ActiveRecord::Migration
  def change
    add_column :exams, :notes, :text
  end
end
