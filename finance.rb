class BankAccount
  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
    check_balance(amount)
  end

  private

  def check_balance(amount)
    raise "残高不足です" if @balance < amount
  end
end

account = BankAccount.new(1000)
account.deposit(500)
account.withdraw(200)

# 残高を確認
puts account.balance # 1300

# ここで、instance_variable_setを使って残高を直接書き換える
account.instance_variable_set(:@balance, -1000)

# 残高を確認
puts account.balance # -1000

# 引き続き処理を行うと、不正な状態になる可能性がある
account.withdraw(500) # 残高不足エラーが発生するはずが、残高が負の値になっているため、エラーが発生しない