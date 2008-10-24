class AddSampleTasks < ActiveRecord::Migration
  def self.up
    Task.create(:name => "Task 1")
    Task.create(:name => "Task 2")
    Task.create(:name => "Task 3")
  end

  def self.down
    Task.find(:all).each {|task| task.destroy}
  end
end
