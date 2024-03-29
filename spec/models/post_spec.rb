require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
    before do
  		@post = FactoryGirl.create(:post)
    end
    it "can be created" do
      expect(@post).to be_valid
    end

    it "cannot be created without date and Work Performed and daily hours " do
      @post.date = nil
      @post.work_performed = nil
      @post.daily_hours = nil
      expect(@post).to_not be_valid
    end

    it "has an daily_hours greater than 0.0" do
      @post.daily_hours = 0.0
      expect(@post).to_not be_valid
    end
  end
end
