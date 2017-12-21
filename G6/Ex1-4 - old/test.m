function [ ] = test ( members, test, m, k )
    %members = {'Espanha', 'Itália', 'Portugal', 'Catalunha', 'Reino Unido' };
    %test = {'Portugal', 'Polónia', 'França', 'Reino Unido'};

    %m = 100;        % Bloom filter size
    %k = 3;              % Number of hash 
    B = initBloomFilter(m);

    for i = 1: length(members)
        B = addBloomFilter(B, k, members(i));
    end

    for i = 1: length(test)
        contains = verify(B, k, test(i));
        if (contains == 1)
               fprintf('%s pertence\n', test(i));
        else
               fprintf('%s não pertence\n', test(i));
        end
    end

end

