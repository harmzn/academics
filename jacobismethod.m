A=[4.63 -1.21 3.22;
    -3.07 5.48 2.11;
    1.26 3.11 4.57]
b=[2.22;-3.17;5.11]
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



    