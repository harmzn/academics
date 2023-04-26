X=[1 1.5 2 2.5];
Y=[2.7183 4.4817 7.3891 12.1825];
n=length(X);
p=2.25;
sum=0;
for i=1:n
    li=1;
    for j=1:n
        if i~=j
            li=li*((p-X(j))/(X(i)-X(j)));
        end
    end
    sum=sum+(Y(i).*li);
end
fprintf('The sum is = %f \n',sum)

