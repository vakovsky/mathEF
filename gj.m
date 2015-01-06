function x=gj(A,b)
n=length(b);
for k=1:n
    t=A(k,k);
    for j=1:n
        A(k,j) = A(k,j)/t;
    end
    b(k) = b(k)/t;
    for i=1:n
        if i ~= k 
            t= A(i,k);
            for j=k+1:n
                A(i,j)=A(i,j)-A(k,j)*t;
            end
            b(i)=b(i)-b(k)*t;
        end
    end
    x=b;
end