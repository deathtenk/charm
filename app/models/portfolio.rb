class Portfolio < ActiveRecord::Base
  belongs_to :author
  validates :title, presence: true
end
