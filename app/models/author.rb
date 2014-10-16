class Author < ActiveRecord::Base
  has_one :blog
  has_many :posts, :through => :blog
  has_one :profile
  has_one :portfolio
  has_many :projects, :through => :portfolio

  # Validations #
  validates :first_name, presence: {message: "is not present"}
  # validates_format_of :first_name, :with => /^[^0-9`!@#\A%\z&*+_=]+$/
  validates :last_name, presence: {message: "is not present"}
  # validates_format_of :last_name, :with => /^[^0-9`!@#\A%\z&*+_=]+$/
  validates :username, length: {minimum: 2}
  validates(:email, presence: {message: "is not present"})
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
