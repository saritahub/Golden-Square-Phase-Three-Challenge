require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour

  it "returns all tasks" do
    task_list = TaskList.new
    fake_task_1 = double :Task
    fake_task_2 = double :Task
    task_list.add(fake_task_1)
    task_list.add(fake_task_2)
    expect(task_list.all).to eq [fake_task_1, fake_task_2]
  end

  xit "returns false if tasks not completed" do
    task_list = TaskList.new
    fake_task_1 = double :Task, mark_complete: true
    fake_task_2 = double :Task, mark_complete: true
    task_list.add(fake_task_1)
    task_list.add(fake_task_2)
    # expect(fake_task_1).to receive(:mark_complete).and_return(true)
    # expect(fake_task_2).to receive(:mark_complete).and_return(true)
    expect(task_list.all_complete?).to eq true
  end

  xit "returns true if all tasks completed" do
    task_list = TaskList.new
    fake_task_1 = double :Task
    fake_task_2 = double :Task
    # task_list.add(fake_task_1)
    # task_list.add(fake_task_2)
    expect(fake_task_1).to receive(:mark_complete)
    expect(fake_task_2).to receive(:mark_complete)
    task_list.add(fake_task_1)
    task_list.add(fake_task_2)
    expect(task_list.all_complete?).to eq true
  end

end
