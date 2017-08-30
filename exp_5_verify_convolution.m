clear all;
x1=[1 2 3 4 5];
x2=[2 4 3 6];
subplot(2,2,1);
stem(x1);
xlabel('N');
ylabel('X1[N]');
subplot(2,2,2);
stem(x2);
xlabel('N');
ylabel('X2[N]');
y1=conv(x1,x2);
subplot(2,2,3);
stem(y1);
xlabel('N');
ylabel('X1[N]*X2[N]');
y2=conv(x2,x1);
subplot(2,2,4);
stem(y2);
xlabel('N');
ylabel('X2[N]*X1[N]');