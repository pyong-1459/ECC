function out = pnt_add_proj_LD(in1,in2,prim,m)
X1 = in1(1,:); Y1 = in1(2,:); Z1 = in1(3,:); % Z1 ~= 1
X2 = in2(1,:); Y2 = in2(2,:);                % Z2 == 1
Z1_2 = gf_mul(Z1,Z1,prim,m);
A = xor(gf_mul(Y2,Z1_2,prim,m),Y1);
B = xor(gf_mul(X2,Z1,prim,m),X1);
C = gf_mul(Z1,B,prim,m);
D = gf_mul(gf_mul(B,B,prim,m),C,prim,m);
% D = gf_mul(gf_mul(B,B,prim,m),xor(C, Z1_2),prim,m); % if a = 1
Z3 = gf_mul(C,C,prim,m);
E = gf_mul(A,C,prim,m);
X3 = xor(xor(gf_mul(A,A,prim,m),D),E);
F = xor(X3,gf_mul(X2,Z3,prim,m));
G = xor(X3,gf_mul(Y2,Z3,prim,m));
Y3 = xor(gf_mul(E,F,prim,m),gf_mul(Z3,G,prim,m));
out = [X3;Y3;Z3];
end