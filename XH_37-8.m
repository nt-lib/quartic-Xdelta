P<x,y,z,w>:=ProjectiveSpace(Rationals(),3);
// Equations taken from:
// https://beta.lmfdb.org/ModularCurve/Q/37.114.4.b.1/
C:= Curve(P,[x^2 - x*z - x*w - y*z + z^2 + z*w, x^3 - x^2*y + x*y^2 - x*z*w - y^2*z - y^2*w + 2*y*w^2 + z^2*w - w^3]);
pls1:=PointSearch(C,1000);

pls1:=[Place(P): P in pls1];

print "number of rational points found: ", #pls1;

//1+1+1+1
for i:=1 to #pls1 do
for j:=i to #pls1 do
for k:=j to #pls1 do
for l:=k to #pls1 do
    D:=pls1[i]+pls1[j]+pls1[k]+pls1[l];
    V,f := RiemannRochSpace(D);
    if Dimension(V) ge 2 then 
        if Degree(f(V.1)) eq 4 or Degree(f(V.2)) eq 4 then
	    print "Found a degree 4 function!";
	    exit;
	end if;
    end if;
end for;
end for;
end for;
end for;
