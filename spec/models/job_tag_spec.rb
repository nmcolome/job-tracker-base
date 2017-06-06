require 'rails_helper'

describe JobTag do
  describe "relationships" do
    it "belongs to a job" do
      job_tag = JobTag.new
      expect(job_tag).to respond_to(:job)
    end

    it "belongs to a tag" do
      job_tag = JobTag.new
      expect(job_tag).to respond_to(:tag)
    end
  end
end
