function v=encodeCycliCode(u,g)
%Encoding with Direct Method : v(x)=G(x)*u(x)
%Example G=[1101],M=[1001],[1101]
%poly2sym convert polynomial to symbol =>


ux=poly2sym(u)
gx=poly2sym(g)
v=fliplr(mod(sym2poly(expand(ux*gx)),2));

end