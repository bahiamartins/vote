require 'rails_helper'

RSpec.describe User, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    @user = User.new(name: "Example User", email: "user@example.com", phone: "11 9 3333 3333")
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:phone) }
  it { should be_valid }

    describe "when name is not present" do
      before { @user.name = " " }
        it { should_not be_valid }
    end
    
    describe "when email address is already taken" do
      before do
        user_with_same_email = @user.dup
        user_with_same_email.email = @user.email.upcase
        user_with_same_email.save
      end
    
    describe "when phone is not present" do
      before { @user.phone = " " }
        it { should_not be_valid }
      end

      it { should_not be_valid }
    end
end
