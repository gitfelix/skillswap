require 'rails_helper'

  describe User, "new" do 
    it "should have an email address" do
      user = User.new(email: "testing@test.web")
      expect(user.email).to eq("testing@test.web")
    end
  end