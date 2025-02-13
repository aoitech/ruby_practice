class Todo
  attr_reader :title
  attr_writer :title #定義することでtodo=todo(value)のsetterを自動で定義

  def initialize(title)
    @title = title
    @tasks = []
  end

  def describe
    puts "#{@title} \n【タスク】\n#{@tasks.join("、")}"
  end

  def add_task(task)
    @tasks.push(task)
  end

end

todo = Todo.new("HOME TODO")
todo.title = "WORK" #def title=の呼び出し。引数"WORK"を渡す
puts todo.title