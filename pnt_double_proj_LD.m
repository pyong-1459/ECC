function out = pnt_double_proj_LD(in, prim, m)
x2 = gf_mul(in(1,:),in(1,:),prim,m);
z2 = gf_mul(in(3,:),in(3,:),prim,m);
y2 = gf_mul(in(2,:),in(2,:),prim,m);
z4 = gf_mul(z2,z2,prim,m);
Z3 = gf_mul(x2,z2,prim,m);
X3 = xor(gf_mul(x2,x2,prim,m),z4);
Y3 = xor(gf_mul(z4,Z3,prim,m),gf_mul(X3,xor(y2,z4),prim,m));
% Y3 = xor(gf_mul(z4,Z3,prim,m),gf_mul(X3,xor(xor(y2,z4),Z3),prim,m));
out = [X3;Y3;Z3];
end
