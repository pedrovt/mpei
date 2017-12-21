% Calculate distPT
alphabet = ['A':'Z' 'a':'z' '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];  % Portuguese Alphabet
files={'pg21209.txt','pg26017.txt'};
pmfPT=pmfLetrasPT(files, alphabet);
distPT = cumsum(pmfPT);

kmax=15;
fp=zeros(1,kmax);
for k=1:kmax
    fp(k)=fex3(k,alphabet,distPT);
    fprintf(1,'k=%d :  fp=%d  =>  pFP=%.4f\n',k,fp(k),fp(k)/1e4);
    figure(1);
    plot(1:k, fp(1:k)/10000,'b*:');
    drawnow;
end
