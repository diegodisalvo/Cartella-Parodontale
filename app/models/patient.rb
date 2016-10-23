class Patient < ActiveRecord::Base
  has_many :exams

  has_and_belongs_to_many :users

  # search
  def self.search(search)
    where("name ILIKE ? OR last_name ILIKE ?", "%#{search}%", "%#{search}%")
  end
end
