clear all;
x1=[1 2 3 4 5];
x2=[2 4 3 6];
x3=[9 7 4 3 1];
subplot(2,3,1);
stem(x1);
xlabel('N');
ylabel('X1[N]');
subplot(2,3,2);
stem(x2);
xlabel('N');
ylabel('X2[N]');
subplot(2,3,3);
stem(x3);
xlabel('N');
ylabel('X3[N]');
y1=conv(x2,x3);
y_net1=conv(x1,y1);
subplot(2,3,4);
stem(y_net1);
xlabel('N');
ylabel('X1[n]*(X2[N]*X3[N]');
y2=conv(x1,x2);
y_net2=conv(x3,y2);
subplot(2,3,5);
stem(y_net2);
xlabel('N');
ylabel('(X1[n]*X2[N])*X3[N]');