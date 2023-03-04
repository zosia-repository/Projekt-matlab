function[x]=Bisekcja(a,b,M,delta,Eps)
krok=0;
fa=Fun1(a)
fb=Fun1(b)
if fa*fb>0
    x='brak miejsca zerowego'
else
    x=min(abs(fa), abs(fb))
    while (krok<M) & (b-a>delta) & (x>Eps)
    krok=krok+1
    x1=(a+b)/2;
    fx=Fun1(x1)
    if fa*fx<0
        b=x1
        fb=fx
    else
        a=x1
        fa=fx
    end
    x=min(abs(fa), abs(fb));
end
if (x<Eps)
    if abs(fa)==x
        x=a
    else
        x=b
    end
else
    x=(a+(b-a)/2)
end
end
