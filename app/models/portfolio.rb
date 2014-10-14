class Portfolio < ActiveRecord::Base
  belongs_to :author
  has_many :projects
end
