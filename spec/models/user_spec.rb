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
end