require "task_list"
require "task"


class TaskFormatter
  def initialize(task) # task is an instance of Task
    @task = task 
    @tasks = []
    @tasks << task 
  end

  def format
    @tasks.all? do |task|
      if task.complete?
        return "#[x] {@task}"
      else 
        return  
        "#[ ] {@task}"
      end 
    end 
  end

end