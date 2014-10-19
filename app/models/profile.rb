class Profile < ActiveRecord::Base
  belongs_to :author
  validates :title, presence: true
  validtes :description, presence: true
end
