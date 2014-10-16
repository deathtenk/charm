require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
   test "create an author" do
     a = Author.new first_name: "bob",
                    last_name: "sagget",
                    username: "whataguy",
                    email: "whataguy@test.ts"
     assert a.save, a.errors.full_messages
   end

   test "First name is not present" do
     a = Author.new
     refute a.save, 'First name is not present'
     assert a.errors.full_messages.include?('First name is not present')
   end

   test "Last name is not present" do
     a = Author.new
     refute a.save, 'Last name is not present'
     assert a.errors.full_messages.include?('Last name is not present')
   end

   test "Username is too short (minimum is 2 characters)" do
     a = Author.new
     refute a.save, 'Username is too short (minimum is 2 characters)'
     assert a.errors.full_messages.include?('Username is too short (minimum is 2 characters)')
   end

   test "Email is not present" do
     a = Author.new
     refute a.save, 'Email is not present'
     assert a.errors.full_messages.include?('Email is not present')
   end

   test "Email is invalid" do
     a = Author.new(email:"hi")
     refute a.save, 'Email is invalid'
     assert a.errors.full_messages.include?('Email is invalid')
   end

end
