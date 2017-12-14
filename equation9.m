% PS = PSij, p = p(N,K), Pi = PSi, ps = ps(N,K), N = N
% =====================================================
function[ST] = equation9(PS, p, Pi, ps, N)

ST = zeros(0,1);
[x, y] = size(PS);
temp_1 = 0;

for i = 1:x
    for j = 1:N
        if j ~= i
            val_1 = (PS(i,j) - p)/(1-p);
            val_2 = (p - PS(i,j))/p;
            max_val_1 = max(val_1, val_2);
            temp_1 = temp_1 + max_val_1;
        end
    end
    
    val_3 = (Pi(i) - ps)/(1 - ps);
    val_4 = (ps - Pi(i))/ps;
    temp_2 = max(val_3, val_4);
    
    temp = temp_1/N + temp_2/N;
    ST = [ST;temp];
end

end