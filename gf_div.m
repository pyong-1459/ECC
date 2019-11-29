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
% disp(x);
out = gf_mul(a,x,prim,m);
% one = [zeros(1,m) 1];
% P = prim;
% delta = -1;
% v = zeros(1,m+1);
% k = 0;
% while k == 0
%     if b(1,m+1) == 1
%         if delta < 0
%             b_tmp = b;
%             b = xor(b,P);
%             P = b_tmp;
%             a_tmp = a;
%             a = xor(a,v);
%             v = a_tmp;
%             delta = -delta;
%         else
%             b = xor(b,P);
%             a = xor(a,v);
%         end
%     end
%     b = [0 b(1,1:m)];
%     a = [0 a(1,1:m)];
%     delta = delta - 1;
%     h = sum(a ~= zeros(1,m+1)); 
%     j = sum(xor(P, one) ~= zeros(1,m+1));
%     k = (h == 0) && (j == 0);
% end
% out = v(1,2:m+1);
end