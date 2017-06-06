class CreateJobTags < ActiveRecord::Migration[5.0]
  def change
    create_table :job_tags do |t|
      t.references :job, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps
    end
  end
end
