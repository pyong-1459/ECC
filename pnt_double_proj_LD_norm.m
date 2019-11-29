function out = pnt_double_proj_LD_norm(in,m,T)
x2 = gf_sqr_norm(in(1,:));
z2 = gf_sqr_norm(in(3,:));
y2 = gf_sqr_norm(in(2,:));
z4 = gf_sqr_norm(z2);
Z3 = gf_mul_norm(x2,z2,m,T);
X3 = xor(gf_sqr_norm(x2),z4);
Y3 = xor(gf_mul_norm(z4,Z3,m,T),gf_mul_norm(X3,xor(y2,z4),m,T));
% Y3 = xor(gf_mul_norm(z4,Z3,m,T),gf_mul_norm(X3,xor(xor(y2,z4),Z3),m,T)); % a = 1
out = [X3;Y3;Z3];
end
