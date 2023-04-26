A=[4 1 -1;
    2 7 1;
    1 -3 12]
b=[3;19;31]
e=input('Enter the accuracy')
N=input('Enter the number of iterations'); %no. of iterations
   %accuracy
n=length(b);
X=zeros(n,1);
X0=zeros(n,1);
k=1 ; %initial iteration
while k<=N
    for i=1:n
    sum1=0;
    for j=1:i-1
       
        sum1=sum1+A(i,j)*X(j);
        end
        sum2=0;
        for j=i+1:n
            sum2=sum2+A(i,j)*X0(j)
        end
        X(i)=(b(i)-sum1-sum2)/A(i,i)
    end
    if norm(X-X0,inf)<e
        fprintf('The solution is %f \n',X)
        break
    end
    X0=X
    k=k+1

end



    