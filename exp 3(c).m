t=[0:0.05:10];
a=-1;
for i=1:length(t)
    y(i)=1-exp(a*t(i));
end
stem(t,y);
xlabel('time');
ylabel('amplitude');
title('Continous time fucntion');