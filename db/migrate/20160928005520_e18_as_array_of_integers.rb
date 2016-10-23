class E18AsArrayOfIntegers < ActiveRecord::Migration
  def change
    remove_column :exams, :e18
    add_column :exams, :e18, :integer, array: true, default: [0,0,3,3,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  end
end
