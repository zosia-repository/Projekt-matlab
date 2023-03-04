function[x]=Stef(M,del,eps,x1)
a=Fun1(x1);
krok=0;
roznica=del+1;
while (krok<M) & (roznica>del)   & (abs(a)>eps)
    c=x1;
    d=Fun1(x1+a);
    x1=x1-(a*a)/(d-a);
    a=Fun1(x1);
    krok=krok+1;
    roznica=abs(c-x1);
    krok
end
x=x1;
fprintf('\n\nApproximate solution x = %.8f\n', x)
end                              