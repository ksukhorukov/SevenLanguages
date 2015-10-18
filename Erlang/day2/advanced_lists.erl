Cart = [{pencil, 4, 0.25}, {pen, 1, 1.20}, {paper, 2, 0.20}].

WithTax = [{Product, Quantity, Price, Price * Quantity * 0.08} ||  {Product, Quantity, Price} <- Cart].
% [{pencil,4,0.25,0.08},{pen,1,1.2,0.096},{paper,2,0.2,0.032}]
Cat = [{Product, Price} || {Product, _, Price} <- Cart].
% [{pencil,0.25},{pen,1.2},{paper,0.2}]

DiscountedCat = [{Product, Price / 2} || {Product, Price} <- Cat].
% [{pencil,0.125},{pen,0.6},{paper,0.1}]

[{X,Y}||X <-[1,2,3,4],X<3,Y<-[5,6]].
% [{1,5},{1,6},{2,5},{2,6}]