clear all;
t=-10:1:10;
x=[2 -1 3 7 1 2 -3];
y=[1 -1 2 -2 4 1 -2 5];
for i=1:length(t)
    if t(i)==-4
        min=i-1;
        else if t(i)==2
            max=i+1;
        end
    end
end
x=[zeros(1,min) 2 2 -1 3 7 1 2 -3 zeros(1,max)];
subplot(1,4,1);
stem(x);
for i=1:length(t)
    if t(i)==-2
        min=i-1;
        else if t(i)==5
            max=i+1;
        end
    end
end
y=[zeros(1,min) 1 -1 2 -2 4 1 -2 5 zeros(1,max)];
subplot(1,4,2);
stem(y);
r=xcorr(x,y);
r1=xcorr(y,x);
subplot(1,4,3);
stem(r);
subplot(1,4,4);
stem(r1);