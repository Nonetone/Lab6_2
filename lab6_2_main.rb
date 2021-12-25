# frozen_string_literal: true

Expr = Enumerator.new do |result|
  k = 1
  #s = 0.0
  loop do
    #s += ((-1.0)**(k - 1)) / k
    #result << s
    result << ((-1.0)**(k - 1)) / k
    k += 1
    #break if ((s - Math.log(2, 2.71828182846)).abs <= 0.0001)
  end
end

def approx(eps)
  Expr.take_while { |num| num.abs >= eps}.sum
  counter = Expr.take_while { |num| num.abs >= eps}.count
  puts res
  puts("Количество элементов энумератора #{counter}")
  return res
end















#def expr(num)
#  ((-1)**(num.to_f - 1)) / num.to_f
#end

#def func(acc)
#  s = 0.0
#  (1..100_000_000).each do |counter|
#    s += expr(counter)
#    if (Math.log(2, 2.71828182846) - s).abs <= acc
#      puts("Количество итераций #{counter}")
#      break
#    end
#  end
#  s
#end

#Решить через enumerable
