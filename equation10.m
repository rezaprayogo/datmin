% PS = PSij, Pi = PSi, ps = ps(N,K), N = N, K = K
% ============================================================
function[STapprox] = equation10(PS, Pi, K, N)

STapprox = zeros(0,1);
[x, y] = size(PS);
temp_1 = 0;

for i = 1:x
    for j = 1:y
        if j ~= i
            val_1 = (K/(K-1))*(PS(i,j) - (1/K));
            val_2 = K*((1/K) - PS(i,j));
            max_val_1 = max(val_1, val_2);
            temp_1 = temp_1 + max_val_1;
        end
    end
    
    val_3 = (power(K, N-1)/(power(K, N-1)-power(K-1,N-1)))*(Pi(i) - (power(K, N-1)/power(K,N-1)));
    val_4 = (power(K,N-1)/power(K-1,N-1))*((power(K-1,N-1)/power(K,N-1)) - Pi(i));
    temp_2 = max(val_3, val_4);
    
    temp = temp_1/N + temp_2/N;
    STapprox = [STapprox;temp];
end

end