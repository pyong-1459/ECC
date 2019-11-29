function out = gf_mul(a, b, poly, m)

% agen = fliplr(gfprimdf(m,2)); 
% alpha = zeros(n,m);
% alpha(1,:) = [zeros(1,m-1), 1];                                         % alpha(1) 은 알파 1승이 되어야 하므로 0010, 0001부터 하면 알파 0승임
% %--------------------------------------------------------------------------
% for i = 2:n                                                              % 알파 1승부터 14승까지 polynomial notation 구함
%     if(alpha(i-1,1) == 1)
%         alpha(i, :) = xor([alpha(i - 1, 2:m) 0], agen(1, 2:m + 1));
%     else
%         alpha(i, :) = [alpha(i - 1, 2:m) 0];
%     end
% end

% m = 4;
% poly = [1 0 0 1 1];
% a = [1 0 1 0];
% b = [0 1 0 1];
if a == zeros(1,m)
    out = zeros(1,m);
elseif b == zeros(1,m)
    out = zeros(1,m);
else
    x = zeros(1,2*m-1);

    for i = 1:m
        if b(1,m-i+1) == 1
            if i == 1
                x = xor(x, [zeros(1,m-1), a(1,:)]);
            elseif i == m
                x = xor(x, [a(1,:), zeros(1,m-1)]);
            else
                x = xor(x, [zeros(1,m-i) a(1,:) zeros(1,i-1)]);
            end
        end
    end

    for i = 1:m-1
        if x(1,i) == 1
            if i == 1
                x = xor(x, [poly zeros(1,m-2)]);
            elseif i == m-1
                x = xor(x, [zeros(1,m-2) poly]);
            else
                x = xor(x, [zeros(1,i-1) poly zeros(1,m-i-1)]);
            end
        end
    end

    out = x(1, m:(2*m-1));
end
end