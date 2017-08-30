t=-5:0.05:5;
for i=1:length(t)
    if(t(i)>-2 && t(i)<=0)
       y(i)=2+t(i);
    else if(t(i)>0 && t(i)<4)
       y(i)=2-t(i);
        else
            y(i)=0;
        end
    end
end
stem(t,y);
xlabel('time');
ylabel('amplitude');
title('discrete time fucntion');