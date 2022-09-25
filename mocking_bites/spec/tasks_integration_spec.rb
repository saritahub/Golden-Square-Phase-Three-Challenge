require "task_list"
require "task"
require "/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three-Challenge/mocking_bites/lib/03_TaskFormatter.rb"

RSpec.describe "tasks integration" do
  it "adds tasks to a list" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all).to eq [task_1, task_2]
  end

  it "marks tasks as complete" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    task_1.mark_complete
    task_2.mark_complete
    expect(task_list.all_complete?).to eq true
  end 

     it "Adds taskformatter to the list" do 
      task_list = TaskList.new
      taskformatter = TaskFormatter.new("Walk the dog")
      task_1 = Task.new(taskformatter) 
      expect(task_list.add(task_1)).to eq [task_1]
    end 
  

  context "task is complete" do 
    xit "returns [] Task title if task complete" do 
      task_list = TaskList.new
      taskformatter = TaskFormatter.new("Walk the dog")
      task_1 = Task.new(taskformatter)
      task_list.add(task_1)
      task_1.mark_complete
      # taskformatter =taskformatter.format  
      expect(taskformatter.format).to eq "[x] #{taskformatter}"
    end 
  end  

end
