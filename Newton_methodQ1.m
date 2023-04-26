syms x                               %question 1
F= @(x) cos(x)-x.*exp(x);
G= @(x) -sin(x)-x.*exp(x)-exp(x);

X=[]
X(1)=input('Enter first value=');
%X(2)=input('Enter second value=');
i=1;
e=input('Enter desired accuracy');
N=input('Enter number of iterations=');
while i<=N
    X(i+1)=X(i)-( F(X(i) )./G( X(i) ))
    if abs(X(i+1)-X(i))<=e
        fprintf('Desired root=%f \t iteration = %d\n',X(i+1),i)
        break
    else
        i=i+1;
    end
end

