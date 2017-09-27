clear all;
x=[0 1 2 3 0 1 2 3];
subplot(3,1,1);
stem(x);
k=-10:1:10;
w=(2*pi)/4;
for i=1:length(k)
    for j=1:4
        y(j)=x(j)*exp(-1i*w*j*k(i));
    end
    ynew(i)=0.25*sum(y);
    kw(i)=k(i)*w;
    ymag(i)=abs(ynew(i));
    theta(i)=atan(real(ynew(i))/imag(ynew(i)));
end
subplot(3,1,2);
stem(kw,ymag);
subplot(3,1,3);
stem(kw,theta);
