class Todo
  def initialize(title)
    @title = title
    @tasks = []
  end

  def title
   @title #WORK
  end

  def title=(value)
    @title = value #@titleをHOME TODO→WORKに変更
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
todo.add_task("洗濯")
todo.add_task("掃除")
todo.add_task("料理")
todo.describe