function v=encodeCycliCode2(u,g)
%Encoding with G(x) polynomial:v(x)
%delta= u(x) *x^n-k
%Example G=[1101],M=[1001],[1101]
%poly2sym convert polynomial to symbol =>

ux=poly2sym(u)
gx=poly2sym(g)
k=length(u);
%vector start 1
polypowers=find(g)-1;
paritybits=max(polypowers);
n=paritybits+k;

syms x
zx= x^paritybits %symbol
zxb=sym2poly(zx);
delta_ux=expand(ux*zx)
delta_uxb=sym2poly(delta_ux)
[result,b]=deconv(delta_uxb,g)
bx=poly2sym(mod(b,2))
v=fliplr(sym2poly(delta_ux+bx));
len=length(v);
if n > len
    v=[v 0];
end
end