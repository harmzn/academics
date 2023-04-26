n=input('enter number of rows of matrix')
A=[5 5 0 0 0 5.5;
    0 0 1 -1 -1 0;
    0 0 0 2 -3 0;
    1 -1 -1 0 0 0;
    0 5 -7 -2 0 0]
for k = 1:n-1
    for i=k+1:n 
        m=A(i,k)/A(k,k);
        for j=k+1:n+1
            A(i,j)=A(i,j)-m*A(k,j);
        end
    end
end

for k=n:-1:1
    sum=0;
    for j=k+1:n
        sum=sum+A(k,j)*X(j);
    end
    X(k)=(A(k,n+1)-sum)./A(k,k);

end    
for  i=1:n
    fprintf('solution is %f\n',X(i))
end

