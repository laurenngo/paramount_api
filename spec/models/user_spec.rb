require 'spec_helper'

describe User do
  # pending "add some examples to (or delete) #{__FILE__}"

  before { @user = FactoryGirl.build(:user) }

  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  it { should be_valid }
end


describe "emails should be present and unique & passwords confirmed" do

	before { @user.email = " " }
	it { should validate_presence_of(:email) }
	it { should validate_uniqueness_of(:email) }
	it { should validate_confirmation_of(:password) }
	it { should allow_value('example@domain.com').for(:email) }

end

