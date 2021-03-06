require 'rails_helper'

describe Tag do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without a name" do
        tag = Tag.new
        expect(tag).to be_invalid
      end
    end

    context "valid attributes" do
      it "is valid with a name" do
        tag = Tag.new(name: 'Software')
        expect(tag).to be_valid
      end
    end
  end

  describe "relationships" do
    it "has many jobs" do
      tag = Tag.new(name: 'Software')
      expect(tag).to respond_to(:jobs)
    end

    it "has many job_tags" do
      tag = Tag.new(name: 'Software')
      expect(tag).to respond_to(:job_tags)
    end
  end
end
