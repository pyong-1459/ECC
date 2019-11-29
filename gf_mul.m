function out = gf_mul(a, b, poly, m)

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
