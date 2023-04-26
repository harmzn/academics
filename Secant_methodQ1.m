F= @(x) exp(x)-cos(x)
X=[]
X(1)=input('Enter first value=');
X(2)=input('Enter second value=');
i=2;
e=input('Enter desired accuracy');
N=input('Enter number of iterations=');
while i<=N
    X(i+1)=X(i)-(( (X(i)-X(i-1) ).*F(X(i)) )./( F(X(i)) - F(X(i-1))));
    if abs(X(i+1)-X(i))<=10^-6  %e
        fprintf('Desired root=%f \t iteration = %d\n',X(i+1),i)
        break
    else
        i=i+1
    end
end

