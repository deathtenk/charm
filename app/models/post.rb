class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :author, :through => :blog
end
