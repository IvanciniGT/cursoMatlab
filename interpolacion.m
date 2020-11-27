x = 0 : pi/4 : 2*pi;
x
v = sin(x);
v
xq = 0: pi/16: 2*pi;
xq

figure
vq1 = interp1(x,v,xq,'spline');
plot(x,v,'o',xq,vq1,':.');
xlim([0 2*pi]);
title('(Default) Linear Interpolation');