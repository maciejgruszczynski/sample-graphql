# frozen_string_literal: true

if Rails.env.development?
  ActiveRecord::Migration.say_with_time('Creating Projects and tasks') do
    5.times do |i|
      project = Project.new(name: "Project_#{i}", description: "Description of the project_#{i}")
      5.times do |i|
        project.tasks.build(title: "Task_#{i}", description: "Description of the task_#{i}")
      end
      project.save!
    end
  end
end
