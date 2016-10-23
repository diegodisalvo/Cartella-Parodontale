class Patient < ActiveRecord::Base
  has_many :exams

  # search
  def self.search(search)
    where("name ILIKE ? OR last_name ILIKE ?", "%#{search}%", "%#{search}%")
  end
end
