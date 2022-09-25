class TaskList
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def all
    return @tasks
  end

  def all_complete?
    return false if @tasks.empty?
    @tasks.all? do |task|
      return task.complete?
    end
  end
end
