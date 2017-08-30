clear all;
x1=[1 2 3 4 5];
x2=[2 4 3 6];
x3=[9 7 4 3 1];
temp=length(x1)+length(x2)+length(x3);
% z=zeros(0,(length(x1)+length(x2)+length(x3)-1));
z=zeros(0,2);
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:temp
    y1(i)=x1(i)+x2(i);
end
y_net1=conv(x3,y1);
subplot(2,3,4);
stem(y_net1);
xlabel('N');
ylabel('X1[n]*(X2[N]*X3[N]');
y_net2=conv(x1,x3);
y_net3=conv(x3,x2);
for i=1:temp
    y_net4(i)=y_net2(i)+y_net3(i);
end
subplot(2,3,5);
stem(y_net4);
xlabel('N');
ylabel('(X1[n]*X2[N])*X3[N]');