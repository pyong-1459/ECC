function out = gf_mul_norm(a,b,m,T)
A = fliplr(a);
B = fliplr(b);
p = T*m+1;
F = zeros(T*m,1);
for i = 1:2*p
    if mod(T^i,p) == 1
        u = i;
        break;
    end
end
w = 1;
for j = 0:T-1
    n = w;
    for i = 0:m-1
        F(n) = i;
        n = mod(2*n,p);
    end
    w = mod(u*w,p);
end
C = zeros(1,m);
for i = 1:m
    c = 0;
    for j = 1:p-2
        c = xor(c,and(A(F(j+1)+1),B(F(p-j)+1)));
    end
    C(i) = c;
    A = circshift(A,-1);
    B = circshift(B,-1);
end
out = fliplr(C);
end
