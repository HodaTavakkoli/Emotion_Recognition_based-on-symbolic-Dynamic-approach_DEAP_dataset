function a_symbolic7 = Make_7Symbol(a)

n = size(a,2);
s = 7;
l = floor(n/s);
a_mean = mean(a,2)';
Distance = dist(a_mean,a);
Sorted_Distance = sort(Distance);

for k = 1:s
    Partitioned_Distance(k) = Sorted_Distance(l*k);
end

a_symbolic7 = zeros(1,n);

for k = 1:n
    distance = dist(a_mean,a(:,k));
    
    if (distance < Partitioned_Distance(1))
                a_symbolic7(1,k) = 1;
            elseif (distance < Partitioned_Distance(2))
                a_symbolic7(1,k) = 2;
            elseif (distance < Partitioned_Distance(3))
                a_symbolic7(1,k) = 3;
            elseif (distance < Partitioned_Distance(4))
                a_symbolic7(1,k) = 4;
            elseif (distance < Partitioned_Distance(5))
                a_symbolic7(1,k) = 5;
            elseif (distance < Partitioned_Distance(6))
                a_symbolic7(1,k) = 6;
            else
                a_symbolic7(1,k) = 7;
    end
end

end




    