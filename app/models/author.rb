class Author < ActiveRecord::Base
  has_one :profile
  has_one :portfolio
  has_many :projects, :through => :portfolio
  has_one :blog
  has_many :posts, :through => :blog

end
