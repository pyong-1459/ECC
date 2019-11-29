function out = poly2hex(poly)

flip_poly = fliplr(poly);
len = size(poly,2);
block = floor(len/4);
modulo = mod(len,4);

if modulo == 0
    for i = 1:block
        tmp = flip_poly(:,4*i-3,:,:) + 2*flip_poly(:,4*i-2,:,:) + 4*flip_poly(:,4*i-1,:,:) + 8*flip_poly(:,4*i,:,:);
        hx(:,i,:) = dec2hex(tmp);
    end
    out = fliplr(hx);
else
    for i = 1:block
        tmp = flip_poly(:,4*i-3,:,:) + 2*flip_poly(:,4*i-2,:,:) + 4*flip_poly(:,4*i-1,:,:) + 8*flip_poly(:,4*i,:,:);
        hx(:,i,:) = dec2hex(tmp);
    end
    for i = 1:modulo
        if i == 1
            tmp = flip_poly(:,4*block+i,:,:);
        else
            tmp = tmp + 2^(i-1)*flip_poly(:,4*block+i,:,:);
        end
    end
    hx(:,block+1,:) = dec2hex(tmp);
    out = fliplr(hx);
end