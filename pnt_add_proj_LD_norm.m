function out = pnt_add_proj_LD_norm(in1,in2,m,T)
X1 = in1(1,:); Y1 = in1(2,:); Z1 = in1(3,:); % Z1 ~= 1
X2 = in2(1,:); Y2 = in2(2,:);                % Z2 == 1
Z1_2 = gf_sqr_norm(Z1); 
A = xor(gf_mul_norm(Y2,Z1_2,m,T),Y1);
B = xor(gf_mul_norm(X2,Z1,m,T),X1);
C = gf_mul_norm(Z1,B,m,T);
D = gf_mul_norm(gf_mul_norm(B,B,m,T),C,m,T);
% D = gf_mul_norm(gf_sqr_norm(B),xor(C, Z1_2),m,T); % if a = 1
Z3 = gf_sqr_norm(C);
E = gf_mul_norm(A,C,m,T);
X3 = xor(xor(gf_sqr_norm(A),D),E);
F = xor(X3,gf_mul_norm(X2,Z3,m,T));
G = xor(X3,gf_mul_norm(Y2,Z3,m,T));
Y3 = xor(gf_mul_norm(E,F,m,T),gf_mul_norm(Z3,G,m,T));
out = [X3;Y3;Z3];
end