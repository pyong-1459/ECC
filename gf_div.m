function out = gf_div(a,b,prim,m)
x = zeros(1,m);
for i = 1:m-1
    if i == 1
        k = gf_mul(b,b,prim,m);
    else
        k = gf_mul(k,k,prim,m);
    end
    if x == zeros(1,m)
        x = k;
    else
        x = gf_mul(x,k,prim,m);
    end
end
out = gf_mul(a,x,prim,m);
end
