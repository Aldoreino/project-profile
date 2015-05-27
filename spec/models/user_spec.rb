require 'rails_helper'
RSpec.describe User, :type => :model do  
	it "has a name" do
		# does the name exist?
		expect(subject).to respond_to(:name)
	end
	it "is invalid without a name" do
		# can a user be created without a name?
		expect(subject).to be_invalid
	end
	it "raises an error without a name" do
		# will it raise an error without a name?
		expect{subject.save!}.to raise_error(ActiveRecord::RecordInvalid)
	end
	it "has an email" do
		# does the email exist?
		expect(subject).to respond_to(:email)
	end
	it "is invalid without an email" do
		# can a user be created without an email?
		expect(subject).to be_invalid
	end
	it "raises an error without an email" do
		# will it raise an error without an email?
		expect{subject.save!}.to raise_error(ActiveRecord::RecordInvalid)
	end
	it "has a password" do
		# does the password exist?
		expect(subject).to respond_to(:password_digest)
	end
	it "is invalid without a password" do
		# can a user be created without a password?
		expect(subject).to be_invalid
	end
	it "raises an error without a password" do
		# will it raise an error without a password?
		expect{subject.save!}.to raise_error(ActiveRecord::RecordInvalid)
	end
end