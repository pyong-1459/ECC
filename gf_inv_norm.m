function out = gf_inv_norm(in,m,T)
x = zeros(1,m);
for i = 1:m-1
    if i == 1
        k = gf_sqr_norm(in);
    else
        k = gf_sqr_norm(k);
    end
    if x == zeros(1,m)
        x = k;
    else
        x = gf_mul_norm(x,k,m,T);
    end
end
out = x;
end