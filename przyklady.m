%x = -10*pi:pi/100:10*pi;

%y = sin(x/3)-cos(x/6);
%msc_zer1 = Bisekcja(-10*pi,10*pi,100000,0.000001,0.000001)
%msc_zer2 = Stef(100000,0.000001,0.000001,0)
%msc_zer3 = fsolve(@Fun1,0)
%plot(x,y,'red');
%title('Wykres funkcji y =sin(x/3)-cos(x/6)');


%msc_zer1 = Bisekcja(-20.26,-13.91,100000,0.000001,0.000001)
%msc_zer2 = Stef(100000,0.000001,0.000001,-16)
%msc_zer3 = fsolve(@Fun1,-16)
%msc_zer2
%y=(1/8)*sin(4*x)+cos(x);
%plot(x,y,'red');
%title('Wykres funkcji y =(1/8)*sin(4*x)+cos(x)');

%x = -4:pi/100:4;
%msc_zer1 = Bisekcja(-4,4,100000,0.000001,0.000001)
%msc_zer2 = Stef(100000,0.000001,0.000001,0)
%msc_zer3 = fsolve(@Fun1,0)
%y = x.^3+x.^2-3*x-3
%plot(x,y,'red');
%title('Wykres funkcji y = x^3+x^2-3*x-3');

%x = 0:pi/100:2;
%msc_zer1 = Bisekcja(0,2,6,0.00001,0.00001)
%msc_zer2 = Stef(6,0.00001,0.00001,1)
%msc_zer3 = fsolve(@Fun1,1)
%y = x + log(x)
%plot(x,y,'red');
%title('Wykres funkcji y = x + log(x)');

%x = -4:pi/100:4;
%msc_zer1 = Bisekcja(-2,4,10,0.00001,0.00001)
%msc_zer2 = Stef(10,0.00001,0.00001,2)
%msc_zer3 = fsolve(@Fun1,2)
%y = sin(x.^2-x+1/3)+x/2
%plot(x,y,'red');
%title('Wykres funkcji y = sin(x^2-x+1/3)+x/2');

%dokladnosc metod dla mniejszej liczby krokow 
%x = -4:pi/100:4;
%msc_zer1 = Bisekcja(2,4,6,0.00001,0.00001)
%msc_zer2 = Stef(6,0.00001,0.00001,4)
%msc_zer3 = fsolve(@Fun1,4)
%y = x.^3-3*x.^2-2*x+5
%plot(x,y,'red');
%title('Wykres funkcji y = x^3-3*x^2-2*x+5');

%dokladnosc metod dla mniejszej liczby krokow
%x = 0:pi/100:1;
%msc_zer1 = Bisekcja(0,3,6,0.00001,0.00001)
%msc_zer2 = Stef(6,0.00001,0.00001,2)
%msc_zer3 = fsolve(@Fun1,2)
%y =x.^4-9*x.^3+log(x+2)
%plot(x,y,'red');
%title('Wykres funkcji y = x^4-9*x^3+log(x+2)');


%widzimy ze w funkcjach trygonoetrycznych metoda Steffensena dzial lepiej
%x = -2:pi/200:2;
%msc_zer1 = Bisekcja(-5,0,10,0.00001,0.00001)
%msc_zer2 = Stef(10,0.00001,0.00001,-5)
%msc_zer3 = fsolve(@Fun1,-4)
%y = sqrt(abs(x))+sqrt(1-x.^2)
%y1 = sqrt(abs(x))-sqrt(1-x.^2)
%hold off
%plot(x,y,'red')
%hold on
%plot(x,y1)
%title('Wykres funkcji serduszko');

xlabel('x');
ylabel('y');
xL = xlim;
yL = ylim;
line([0 0], yL,'Color','black','LineStyle','--'); 
line(xL, [0 0],'Color','black','LineStyle','--'); 
%% Opiera sie na tw Darboux