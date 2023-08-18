clc;
clear all;
close all;

x=[1 2 3 4];
h=fliplr(x);

C=x.'*h;

k=length(x);
l=length(h);
n=k+l-1;

for i=1:n
    y(i)=0;
    for j=1:k
        s=i-j;
        m=i-j+1;
        if(s<k && m>0)  
            y(i)=y(i)+C(m,j);
        end
    end
end

z=xcorr(x);
fprintf('The convoluted values using function:');
disp(z);

fprintf('The convoluted values without functio:');
disp(y);

subplot(3,1,1);
stem(x);
title('The input Signal x(n)');
subplot(3,1,2);
stem(z);
title('The auto-correlation using function');
subplot(3,1,3);
stem(y);
title('The auto-correlation using logic');