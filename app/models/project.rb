class Project < ActiveRecord::Base
  belongs_to :portfolio
  belongs_to :author, :through => :portfolio
  validates :name, presence: true
end
