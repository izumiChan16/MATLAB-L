function f = ff15(x)

a=[1 4 3 5 9 12 6 20 17 8];

b=[2 10 8 18 1 4 5 10 8 9];

f(1) = abs(x(1)-a(1))+abs(x(2)-b(1));

f(2) = abs(x(1)-a(2))+abs(x(2)-b(2));

f(3) = abs(x(1)-a(3))+abs(x(2)-b(3));

f(4) = abs(x(1)-a(4))+abs(x(2)-b(4));

f(5) = abs(x(1)-a(5))+abs(x(2)-b(5));

f(6) = abs(x(1)-a(6))+abs(x(2)-b(6));

f(7) = abs(x(1)-a(7))+abs(x(2)-b(7));

f(8) = abs(x(1)-a(8))+abs(x(2)-b(8));

f(9) = abs(x(1)-a(9))+abs(x(2)-b(9));

f(10) = abs(x(1)-a(10))+abs(x(2)-b(10));

% x0 = [6; 6];    

% AA=[-1 0
%    1  0

%    0 -1

%    0  1];

% bb=[-5;8;-5;8];

% [x,fval] = fminimax(@ff15,x0,AA,bb)