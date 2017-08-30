t=0:0.01:10;
y=10;
for i=1:length(t);
    if t(i)<=i*2.5
        y(i)=10;
    else 
        y(i)=-10;
    end
end
plot(t,y);
axis([-12 12 -12 12]);