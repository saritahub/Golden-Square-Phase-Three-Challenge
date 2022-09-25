require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three-Challenge/mocking_bites/lib/03_TaskFormatter.rb'

RSpec.describe TaskFormatter do 
    xit "Returns the task formatted as a string" do 
        taskformatter = TaskFormatter.new("Walk")
        expect(taskformatter.format).to eq "Walk"
    end

    context "task is complete" do 
        xit "returns [] Task title if task complete" do 
            taskformatter = TaskFormatter.new("Walk")
            fake_list = double :TaskList 
            fake_task = double :Task, title:taskformatter
            fake_list = double :TaskList, add:fake_task 
            fake_task = double :Task, mark_complete:true 
            expect(taskformatter.format).to eq "[x] #{taskformatter}"
        end 
    end 

    context "task is not complete" do 
        xit "returns [x] Task title if task not complete" do 
        end 
    end 


end 