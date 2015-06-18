function result = trapezoid(x, f)

result = 0;

for i = 1:(length(x)-1)
    
    result = result + (f(i+1)+f(i))*(x(i+1)-x(i))/2;
    
end