% przykład a)
t = 0:0.0001:1;
y1 = sin(2*pi*5*t);

ts1 = 1/200;
fs1 = 1/ts1;
t1 = 0:ts1:1;
ys1 = sin(2*pi*5*t1);

figure;
subplot(3, 2, 1);
plot(t, y1);
hold on
stairs(t1, ys1);
grid on
title("sin(2*pi*5*t), Ts=1/3")

% przykład b)
y2 = sin(2*pi*5*t) + 0.25*sin(2*pi*25*t);

ts2 = 1/200;
fs2 = 1/ts2;
t2 = 0:ts2:1;
ys2 = sin(2*pi*5*t2) + 0.25*sin(2*pi*25*t2);
subplot(3, 2, 2);
plot(t, y2);
hold on
stairs(t2, ys2);
grid on
title("sin(2*pi*5*t)+0.25*(sin*2*pi*25*t)")

% przykład c)
y3 = exp((-20).*(t-0.5).*(t-0.5)).*sin(2*pi*10.*t);

ts3 = 1/200;
fs3 = 1/ts3;
t3 = 0:ts3:1;
ys3 = exp((-20).*(t3-0.5).*(t3-0.5)).*sin(2*pi*10*t3);
subplot(3, 2, 3);
plot(t, y3);
hold on 
stairs(t3,ys3);
grid on
title("exp(-20*(t-0.5)*(t-0.5))*sin(2*pi*10*t)");


% przykład d)
y4 = sin(2*pi*5*t) + 0.4*sin(2*pi*10*t) + 0.2*sin(2*pi*30*t);

ts4 = 1/200;
fs4 = 1/ts4;
t4 = 0:ts4:1;
ys4 = sin(2*pi*5*t4) + 0.4*sin(2*pi*10*t4) + 0.2*sin(2*pi*30*t4);
subplot(3, 2, 4);
plot(t, y4);
hold on