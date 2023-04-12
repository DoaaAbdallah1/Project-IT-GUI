function v=decodeCycliCode(r,g)
%Decoding cyclic code
r=fliplr(r);
g=fliplr(g);
rx=poly2sym((r))
gx=poly2sym((g))
n=length(r);
[Q,rem]=deconv(r,g);
rem=fliplr(rem);
rem=mod(rem,2)
rem=fliplr(rem);
Rx=poly2sym(rem)
%%%%%%%%

%if(rem==0)
 %   v=r;
    
%else
powers=[];
j=1;
%to find all powers of x in remanider function
for i=1:length(rem)
    if rem(i)==1
        powers(j)=length(rem)-i;
        j=j+1;
    end
end
%powers in function rem print
powers
% n-1-i >>>
for i=1:length(powers)
    powers(i)=n-1-powers(i);
end

% n-1-i >>> print
powers

%%%%%%
index=1;
r=fliplr(r);
for i=1:n
 %shift one element 
 r=circshift(r,1)
   if index<=length(powers)
     if powers(index)== i 
         index=index+1;
         % 1>0 , 0>1 "last element"
         r(n)=1-r(n);
     end
   end
   
end
   

v=r;
vx=poly2sym(fliplr(v))
end