

function dMinHash =  ...  ()
    

    
MH = zeros(kMax,setSize);   % matrix nm hashs   x  num docs

fprintf('\nProcessing Phase 1...\n');
bar = waitbar(0,'Processing Phase 1...');            % wait bar

% for each member of the set (user) --------------
for n = 1: setSize

    userVideos = Set{n};
    numVideos = length(userVideos);
    waitbar(n/setSize, bar, 'Processing Phase 1...')
    
% for each one of the kmax independent hash functions
        for k = 1: kMax
            
            
           MH(k,n)  =  hf(userVideos(v), r, p )
    
    % for each video
    for v = 2 : numVideos
        
            temp  =  hf(userVideos(v) ...)
               
             if temp< MH(k,n)
                    MH(k,n)=temp
                end
                
    
            
            % get hash value (used string2hash)
            %key = num2str([userVideos(v) num2str(k)]);
            %h(k) = rem (string2hash(key), kMax) + 1;
            
        end
        
        % min hash
        %minHash(n, v) = min(h);
        
    end
end


figure(2)
imagesc(MH); colormap(hot); colorbar;



% Estimate Jaccard Distance and Similarity
threshold = 0.4;                          % limiar de decisão
fprintf('\nProcessing Phase 2...\n');
waitbar(0, bar, 'Processing Phase 2...');

for n1= 1: setSize                       % user 1
    for n2= n1+1: setSize            % user 2
        distance(n1,n2) = 1 - sum(MH(:,n1) == MH(:,n2)) / kMax;
        if (distance(n1,n2) < threshold)
            fprintf('%d\t%d\t%f\n', n1, n2,distance(n1,n2));
        end
    end
    waitbar(n1/setSize, bar, 'Processing Phase 2...')
end