function v=encodeCycliCode3(u,g)
%Encoding with Difference Equation 
%Example G=[1101],M=[1001],[1101]
g=fliplr(g)
ux=poly2sym(u)
gx=poly2sym(g)
k=length(u);
polypower=find(g)-1;
paritybits=max(polypower);
n=paritybits+k;
syms x
zx= (x^n) +1
zxb=sym2poly(zx)
[h,r]=deconv(zxb,g)
h=mod(h,2)
r=mod(r,2)
hx=poly2sym(h)
rx=poly2sym(r)
hcoeff=fliplr(h)
v=zeros([1,paritybits])
v=[v u]
m=hcoeff(1:paritybits+1);
x=length(v);
y=length(u);
for j=0:paritybits-1
    v(paritybits-j)=sum(m.*v(x:-1:y))
    v(paritybits-j)=mod(v(paritybits-j),2)
    x=x-1;
    y=y-1;
end
end