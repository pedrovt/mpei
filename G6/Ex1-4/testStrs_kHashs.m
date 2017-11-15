function falsePositives= testStrs_kHashs (bloomFilterSize, lengthTest, k, numStrings, strLength, alphabet, distLetters)
% Create Bloom Filter
B = init(bloomFilterSize);

% Generate members strings and add them to the bloom filter
for i = 1 : numStrings
    string = generateString (strLength, 0, alphabet, distLetters);
    B = insert (B, k, string);
end 

% Generate test strings and verify if they belong to the bloom filter
falsePositives=0;
for i = 1 : lengthTest
    string = generateString(strLength, 0, alphabet, distLetters);
    r = verify (B, k, string);
    
    if r == 1
        falsePositives=falsePositives+1;
    end
    
end 
 