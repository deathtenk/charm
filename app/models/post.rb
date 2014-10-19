class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :author, :through => :blog
  validates :title, presence: true
  validates :body, presence: true
end
