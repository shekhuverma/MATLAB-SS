t=0:0.05:8;
for i=1:length(t)
    if t(i)>0 && t(i)<=2
       y(i)=1;
    else if t(i)>2 && t(i)<=4
       y(i)=2;
        else if t(i)>4 && t(i)<=5
            y(i)=1.8;
            else if t(i)>5 && t(i)<=6
               y(i)=0.7;
               else
                y(i)=0;
               end
            end
        end
    end
end
stem(t,y);
xlabel('time');
ylabel('amplitude');
title('discrete time fucntion');
axis([-5 10 0 3]);