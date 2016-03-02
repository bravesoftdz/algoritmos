def fatorial(n)
	if n == 0
	  1
	else
	  n * fatorial(n - 1)
	end
end
def fibonacci(n)
  if n < 2
    n
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end
def potencia(k,n)
  if n == 1
    k
  else
    k * potencia(k, n - 1)
  end
end 
def max(n,a)
  if n == 1
    a[0]
  else
    x = max(n - 1,a)
	if x > a[n - 1]
	  x
	else
	  a[n - 1]
    end
  end
end
def soma_array(n,a)
  if n == 1
    a[0]
  else
    a[n - 1] + soma_array(n - 1,a)
  end
end
p "fatorial de 100: #{fatorial(100)}"
p "fibonacci de 10: #{fibonacci(20)}"
p "2 elevado a 10: #{potencia(2,10)}"
p "a soma do array [1,2,3,4,5,6,7,8,9,10]: #{soma_array(10,[1,2,3,4,5,6,7,8,9,10])}"
p "o max de [8,4,7,16,12,7,1,13,10,9]: #{max(10,[8,4,7,16,12,7,1,13,10,9])}"