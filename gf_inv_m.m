function out = gf_inv_m(in,prim,m)
x = zeros(1,m);
for i = 1:m-1
    if i == 1
        k = gf_mul(in,in,prim,m);
    else
        k = gf_mul(k,k,prim,m);
    end
    if x == zeros(1,m)
        x = k;
    else
        x = gf_mul(x,k,prim,m);
    end
end
out = x;
end