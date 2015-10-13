require 'spec_helper'

describe 'User' do
  it "has a valid factory"
  it "is invalid without an email"
  it "is invalid with an invalid email"
  it "is invalid without a password"
  it "is invalid with a password less than 8 characters"
  it "is invalid with non-unique email address"
end