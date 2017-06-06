require 'rails_helper'

describe "User sees a specific job" do
  scenario "a user sees all the jobs related to a tag" do
    company = Company.create!(name: "ESPN")
    job = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    job1 = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    job2 = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    job3 = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    job4 = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    job5 = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    job6 = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    job7 = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    job8 = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")

    tag1 = job.tags.create!(name: "Software")
    JobTag.create(job_id: job1.id, tag_id: tag1.id)
    JobTag.create(job_id: job2.id, tag_id: tag1.id)
    JobTag.create(job_id: job3.id, tag_id: tag1.id)
    JobTag.create(job_id: job4.id, tag_id: tag1.id)

    tag2 = job.tags.create!(name: "Good-Location")
    JobTag.create(job_id: job1.id, tag_id: tag2.id)
    JobTag.create(job_id: job2.id, tag_id: tag2.id)
    JobTag.create(job_id: job3.id, tag_id: tag2.id)
    JobTag.create(job_id: job4.id, tag_id: tag2.id)
    JobTag.create(job_id: job5.id, tag_id: tag2.id)
    JobTag.create(job_id: job6.id, tag_id: tag2.id)
    JobTag.create(job_id: job7.id, tag_id: tag2.id)
    JobTag.create(job_id: job8.id, tag_id: tag2.id)

    visit company_job_path(company, job)

    expect(page).to have_content("#{tag1.name} - 5")
    expect(page).to have_content("#{tag2.name} - 9")
  end
end

# As a user,
# When I visit a specific job page,
# I also see a count of how many jobs have each specific tag listed.
