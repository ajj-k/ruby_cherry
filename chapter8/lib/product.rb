module Loggable
  # classの外部から呼び出されてしまうので，基本的にはprivateにする
  # publicだと product.log 'hoge' をclass外で書いてもlogメソッドが呼び出されてしまう
  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  extend Loggable

  def self.create_products(names)
    log 'create_products is called.'
  end

  def title
    log 'title is called.'
    'A great movie'
  end
end

class User 
  extend Loggable

  def name
    log 'name is called'
    'Alice'
  end
end

product = Product.new
product.title

user = User.new
user.name