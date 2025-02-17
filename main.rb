class Todo
  attr_accessor :title
  attr_accessor :tasks

  def self.create(title, task)
    todo = self.new(title)
    todo.add_task(task)
    todo
  end

  def initialize(title)
    @title = title
    @tasks = []
  end

  def describe
    puts all_task_titles
  end

  def add_task(task)
    tasks.push(task)
  end

  private
  def all_task_titles #クラスのメソッドの中でのみ使用するため、privateメソッド化（インスタンスでは使用しない)
    "#{self.title} \n【タスク】\n#{tasks.join("、")}"
  end
end

todo = Todo.create('WORK', 'Email')
todo.describe