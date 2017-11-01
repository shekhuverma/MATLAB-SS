clear all
A=3;
syms n;
f=A^n;
f1=ztrans(f);
[N,D]=numden(f1);
disp(N);
ncoff=input('Enter the coefficients of numerator : ');
disp(D);
dcoff=input('Enter the coefficients of denominator : ');
zero1=roots(ncoff);
pole1=roots(dcoff);
zplane(zero1,pole1);