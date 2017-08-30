f=input('Enter the frequency');
temp=1/(50*f);
t=0:temp:2/f;
a=5;
w=2*pi*f;
y=a.*sin(w.*t);
stem(t,y);
xlabel('TIME');
ylabel('amplitude');
title(['discrete time signal of frequency :' num2str(f)])
