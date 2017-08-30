t=[-5:0.05:5];
a=3;
for i=1:length(t)
    y(i)=a*t(i)*t(i);
end
subplot(2,1,1);
stem(t,y);
xlabel('Time');
ylabel('amplitude');
title('Parabola for a>0');
for i=1:length(t)
    y(i)=-a*t(i)*t(i);
end
subplot(2,1,2);
stem(t,y);
xlabel('Time');
ylabel('amplitude');
title('Parabola for a<0');
