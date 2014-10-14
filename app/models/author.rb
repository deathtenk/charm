class Author < ActiveRecord::Base
  has_one :blog
  has_one :profile
  has_many :portfolios

  validates(:first_name, presence: true)
  validates(:first_name, length: {minimum: 2})
  validates(:last_name, presence: true)
  validates(:last_name, length: {minimum: 2})
  validates(:username, presence: :true)
  validates(:last_name, length: {minimum: 6})
  #validates(:email, presence :true)
  #validates(:email, confirmation :true)
end
