class Todo
  def initialize(title)
    @title = title
    @tasks = []
  end

  def title
    @title
  end

  def describe
    puts "#{@title} \n【タスク】\n#{@tasks.join("、")}"
  end

  def add_task(task)
    @tasks.push(task)
  end

end

todo_for_home = Todo.new("家庭用のTODO")
todo_for_home.add_task("洗濯")
todo_for_home.add_task("掃除")
todo_for_home.add_task("料理")
todo_for_home.describe