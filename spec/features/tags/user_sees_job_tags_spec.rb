require 'rails_helper'

describe "User sees a specific job tags" do
  scenario "a user sees all the tags related to a job" do
    company = Company.create!(name: "ESPN")
    job = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    tag1 = job.tags.create!(name: "Software")
    tag2 = job.tags.create!(name: "Good-Location")

    visit company_job_path(company, job)

    expect(page).to have_content(tag1.name)
    expect(page).to have_content(tag2.name)
  end
end


# As a user,
# When I see a specific job page,
# I see the name of each of the tags associated with that job.