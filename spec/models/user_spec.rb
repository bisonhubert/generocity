require "rails_helper"

describe User do
  let(:bad_user) { User.new }
  it 'Validates presence of email' do
    expect{bad_user.save!}.to raise_error{ActiveRecord::RecordInvalid}
  end
  let(:no_pswd) { User.new(email: "fakeuser@gmail.com") }
  it 'Is invalid without a password' do
    expect{no_pswd.save!}.to raise_error{ActiveRecord::RecordInvalid}
  end
  let(:min_pswd) { User.new(email: "fakeuser@gmail.com", encrypted_password: "2short") }
  it 'Is invalid with a password less than 8 characters' do
    expect{min_pswd.save!}.to raise_error{ActiveRecord::RecordInvalid}
  end

end