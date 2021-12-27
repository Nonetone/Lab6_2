# frozen_string_literal: true

Expr = Enumerator.new do |result|
  k = 1
  loop do
    result << ((-1.0)**(k - 1)) / k
    k += 1
  end
end

def approx(eps)
  counter = 0
  result = 0.0
  #Expr.take_while { |num| num.abs >= eps}.sum
  #counter = Expr.take_while { |num| num.abs >= eps}.count
  Expr.each_with_index do |num,index| 
   if num.abs >= eps
     result += num
     counter += 1 
   else
     break
    end 
  end
  puts result
  puts("Количество итерация #{counter}")
  result
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
